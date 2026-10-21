#include "Quest/QuestEvents.h"
#include "Quest/QuestSettings.h"
#include "Quest/Serialized.h"

using namespace SKSE;

namespace DCURSES::Quest {
    // The GitLab tree does not include the quest cpp files. These keep the DLL linkable.
    // Quest-plugin behavior from the official DLL is not in this source drop.

    bool CheckObjectActivation(RE::TESObjectREFR*) { return false; }
    void CheckQuestStageChanged(RE::FormID, uint16_t) {}
    void OnLocationChanged() {}
    void OnGameLoaded() {}
    void OnSettingsChanged() {}

    void PlayerMessage(Translator, bool) {}
    void ResetMCMSettings() {}
    void SaveMCMSettings() {}
    bool LoadSettingsFile() { return false; }
    void PushSettingsToMCM() {}
    bool PapyrusFunctionsSettigns(RE::BSScript::IVirtualMachine*) { return true; }

    void SerdeOnGameSaved(SKSE::SerializationInterface*) {}
    void SerdeOnRecordLoaded(SKSE::SerializationInterface*, std::uint32_t, std::uint32_t, std::uint32_t) {}
    void SerdeOnRevert(SKSE::SerializationInterface*) {}
}
