#pragma once

#include <string>
#include <vector>

namespace DCURSES {
    struct ExternalEvent {
        std::string id;
        std::string displayName;
        double weight = 0;
        std::string owner = "unknown"; // Plugin file of the form that sent the register event.
    };

    // Weight <= 0 removes the id. Same id registers again and replaces the weight.
    // Ids are case-insensitive. Optional display name: "mycurse~My Curse".
    // The sender only names the owner for the duplicate id warning; the native call has none.
    bool RegisterExternalEvent(std::string spec, double weight, RE::TESForm* sender = nullptr);
    bool UnregisterExternalEvent(std::string spec);
    double GetExternalEventWeight(std::string spec);
    int GetExternalEventCount();
    ExternalEvent GetExternalEventAt(int index);
    std::vector<ExternalEvent> GetExternalEvents();
    void ClearExternalEvents();

    // Fires DCurses_RunExternalEvent, then the normal DCurses_EventTriggered notice.
    void RunExternalEvent(std::string id, std::string displayName, bool isBoss, std::string contName, RE::Actor* actor);
}
