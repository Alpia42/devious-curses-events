# It's recommended to set a minimum CMake version.
# If you use CMake features from higher versions, update this to match.
cmake_minimum_required(VERSION 3.21)

# Set your project name. This will be the name of your SKSE .dll file.
project(DeviousCurses VERSION 0.10.0 LANGUAGES CXX)


set(sources
        plugin.cpp
        src/Consequences.cpp
        src/Contraptions.cpp
        src/DebugMode.cpp
        src/Devices.cpp
        src/Events.cpp
        src/ExternalEvents.cpp
        src/FastTravel.cpp
        src/Locations.cpp
        src/MGEF_Controller.cpp
        src/Migration.cpp
        src/ModEvents.cpp
        src/OppDevices.cpp
        src/QuestInteractions.cpp
        src/Scripting.cpp
        src/Serializer.cpp
        src/Settings.cpp
        src/Tats.cpp
        src/TESEvents.cpp
        src/Themes.cpp
        src/Translation.cpp
        src/Utils.cpp
        src/Sex.cpp
        src/Quest/Stubs.cpp
)



set(OUTPUT_FOLDER "" CACHE PATH "MO2 mod folder to copy DeviousCurses.dll into. Leave empty to skip the copy.")
set(QUEST_OUTPUT_FOLDER "" CACHE PATH "Unused unless the quest MCM target is enabled.")

# set(CommonLibSSE_DIR "S:/Skyrim/modding/CommonLibVR/build/debug-msvc-vcpkg-all")

# Setup your SKSE plugin as an SKSE plugin!
find_package(directxtk CONFIG REQUIRED)
find_package(CommonLibSSE CONFIG REQUIRED)
add_commonlibsse_plugin(${PROJECT_NAME} SOURCES ${sources}) # <--- specifies plugin.cpp
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_23) # <--- use C++23 standard
target_precompile_headers(${PROJECT_NAME} PRIVATE PCH.h) # <--- PCH.h is required!
target_link_libraries(${PROJECT_NAME} PRIVATE d3d11.dll)
target_link_libraries(${PROJECT_NAME} PRIVATE Microsoft::DirectXTK)
target_link_libraries(${PROJECT_NAME} PUBLIC CommonLibSSE::CommonLibSSE)
target_include_directories(${PROJECT_NAME} PRIVATE include)


set(SKYRIM_FOLDER "S:/SteamLibrary/steamapps/common/Skyrim Special Edition") # Change this to your skyrim instalation location
set(SCRIPTS_SOURCE "${CMAKE_SOURCE_DIR}/SourceScripts/")


if(OUTPUT_FOLDER)
    add_custom_command(
        TARGET "${PROJECT_NAME}"
        POST_BUILD
        COMMAND "${CMAKE_COMMAND}" -E make_directory "${OUTPUT_FOLDER}/SKSE/Plugins"
        COMMAND "${CMAKE_COMMAND}" -E copy_if_different "$<TARGET_FILE:${PROJECT_NAME}>" "${OUTPUT_FOLDER}/SKSE/Plugins/$<TARGET_FILE_NAME:${PROJECT_NAME}>"
        VERBATIM
    )
endif()

# Codegen, MCM compile, and translation copy targets need files that are not in this repo
# (DCurses_MCM.psc, translationData, the author's SourceScripts layout). They are omitted
# so a DLL-only build can succeed. The event-roll bridge does not need them.