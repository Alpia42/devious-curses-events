#pragma once

namespace DCURSES {
	void CreateThemesFileIfNeeded();

	std::string GetRandomTheme(RE::Actor* actor, std::set<std::string> usedKeys);

	bool TestTheme(std::string theme, RE::Actor* actor, std::set<std::string> usedKeys);
}