#include "ExternalEvents.h"

#include "ModEvents.h"
#include "Scripting.h"
#include "Utils.h"

#include <algorithm>
#include <mutex>

using namespace SKSE;

namespace DCURSES {
    namespace {
        std::mutex g_externalMutex;
        std::vector<ExternalEvent> g_externalEvents;

        bool IsReservedId(const std::string& id) {
            static const char* reserved[] = {
                "bondage", "oppressive", "oppresive", "contraption", "tattoo", "mark",
                "simpleslavery", "wicked", "wickeddevice", "lewdmark",
                "abadon", "abadonplug", "abadonset", "abadonwarrior", "abadonscout", "abadonwitch",
                "external"
            };
            return std::find(std::begin(reserved), std::end(reserved), id) != std::end(reserved);
        }

        bool ValidIdChar(char c) {
            return (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || c == '_' || c == '-';
        }

        // Returns false if the id is empty, reserved, or not [a-z0-9_-].
        bool ParseSpec(std::string spec, std::string& id, std::string& displayName) {
            spec = Util::trim(Util::tolower(spec));
            if (spec.empty()) {
                return false;
            }

            auto parts = Util::split(spec, "~");
            id = Util::trim(parts[0]);
            displayName = parts.size() >= 2 ? Util::trim(parts[1]) : id;
            if (id.empty() || id.size() > 64 || displayName.size() > 80) {
                return false;
            }
            if (!std::all_of(id.begin(), id.end(), ValidIdChar) || IsReservedId(id)) {
                return false;
            }
            return true;
        }
    }

    bool RegisterExternalEvent(std::string spec, double weight) {
        std::string id;
        std::string displayName;
        if (!ParseSpec(spec, id, displayName)) {
            log::warn("Rejected external event '{}'. Use an id of letters, numbers, '_' or '-', optionally '~display name'. Built-in names are reserved.", spec);
            return false;
        }
        if (weight <= 0) {
            return UnregisterExternalEvent(id);
        }
        if (weight > 10000) {
            log::warn("External event '{}' weight {:.0f} clamped to 10000.", id, weight);
            weight = 10000;
        }

        {
            std::lock_guard<std::mutex> lock(g_externalMutex);
            auto it = std::find_if(g_externalEvents.begin(), g_externalEvents.end(), [&](const ExternalEvent& event) {
                return event.id == id;
            });
            if (it != g_externalEvents.end()) {
                it->displayName = displayName;
                it->weight = weight;
                log::info("Updated external event '{}' weight {:.0f}.", id, weight);
            }
            else {
                g_externalEvents.push_back({ id, displayName, weight });
                log::info("Registered external event '{}' weight {:.0f}.", id, weight);
            }
        }
        return true;
    }

    bool UnregisterExternalEvent(std::string spec) {
        std::string id;
        std::string displayName;
        if (!ParseSpec(spec, id, displayName)) {
            log::warn("Rejected external event unregister '{}'.", spec);
            return false;
        }

        std::lock_guard<std::mutex> lock(g_externalMutex);
        auto before = g_externalEvents.size();
        g_externalEvents.erase(std::remove_if(g_externalEvents.begin(), g_externalEvents.end(), [&](const ExternalEvent& event) {
            return event.id == id;
        }), g_externalEvents.end());
        if (g_externalEvents.size() != before) {
            log::info("Unregistered external event '{}'.", id);
            return true;
        }
        return false;
    }

    double GetExternalEventWeight(std::string spec) {
        std::string id;
        std::string displayName;
        if (!ParseSpec(spec, id, displayName)) {
            return -1;
        }
        std::lock_guard<std::mutex> lock(g_externalMutex);
        auto it = std::find_if(g_externalEvents.begin(), g_externalEvents.end(), [&](const ExternalEvent& event) {
            return event.id == id;
        });
        return it == g_externalEvents.end() ? -1 : it->weight;
    }

    std::vector<ExternalEvent> GetExternalEvents() {
        std::lock_guard<std::mutex> lock(g_externalMutex);
        return g_externalEvents;
    }

    int GetExternalEventCount() {
        std::lock_guard<std::mutex> lock(g_externalMutex);
        return static_cast<int>(g_externalEvents.size());
    }

    ExternalEvent GetExternalEventAt(int index) {
        std::lock_guard<std::mutex> lock(g_externalMutex);
        if (index < 0 || index >= static_cast<int>(g_externalEvents.size())) {
            return {};
        }
        return g_externalEvents[static_cast<size_t>(index)];
    }

    void ClearExternalEvents() {
        std::lock_guard<std::mutex> lock(g_externalMutex);
        g_externalEvents.clear();
        log::info("Cleared external events.");
    }

    void RunExternalEvent(std::string id, std::string displayName, bool isBoss, std::string contName, RE::Actor* actor) {
        log::info("Ran external event {} ({}) from '{}'", id, displayName, contName);
        auto run = CustomModEvent("DCurses_RunExternalEvent");
        run.PushString(id);
        run.PushString(contName);
        run.PushBool(isBoss);
        run.PushForm(actor);
        run.Send();

        SendCurseModEvent(id, contName, actor, "External");
    }
}
