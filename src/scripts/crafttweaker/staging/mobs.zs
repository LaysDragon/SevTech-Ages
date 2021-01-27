/*
	SevTech: Ages Mob Staging Script

	This script handles the staging of mobs to set stages for them to appear.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.Stage;
import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;

// ==================================
// Mobs Staging
static mobsMap as string[][string] = {
	stageOne.stage: [
		"emberroot:rainbowslime",
		"emberroot:slime",
		"minecraft:skeleton",
		"minecraft:skeleton_horse",
		"minecraft:stray",
		// gog3 mobs
		"grimoireofgaia:banshee", // 0
		"grimoireofgaia:baphomet", // 0
		"grimoireofgaia:mite", // 0
		"grimoireofgaia:goblin_feral", // 0
		"grimoireofgaia:horse", // 0
		"grimoireofgaia:illager_inquisitor", // 0
		"grimoireofgaia:vase", // 0
		"grimoireofgaia:vase_nether" // 0
	],

	stageTwo.stage: [
		"emberroot:enderminy",
		"emberroot:fallenmount",
		"emberroot:hero",
		"emberroot:knight_fallen",
		"emberroot:skeleton_frozen",
		"emberroot:withercat",
		"emberroot:witherwitch",
		"minecraft:enderman",
		// gog3 mobs
//		"grimoireofgaia:debug_mob", // disable
		"grimoireofgaia:ant", // 1
		"grimoireofgaia:ant_hill", // 1
		"grimoireofgaia:ant_ranger", // 1
		"grimoireofgaia:arachne", // 1
		"grimoireofgaia:bee", // 1
		"grimoireofgaia:cecaelia", // 1
		"grimoireofgaia:centaur", // 1
		"grimoireofgaia:cobble_golem", // 1
		"grimoireofgaia:creep", // 1
		"grimoireofgaia:cyclops", // 1
		"grimoireofgaia:cyan_flower", // 1
		"grimoireofgaia:deathword", // 1
		"grimoireofgaia:dryad", // 1
		"grimoireofgaia:dullahan", // 1
//		"grimoireofgaia:elf", // disable
		"grimoireofgaia:ender_eye", // 1
		"grimoireofgaia:gryphon", // 1
		"grimoireofgaia:goblin", // 1
		"grimoireofgaia:harpy", // 1
		"grimoireofgaia:harpy_wizard", // 1
		"grimoireofgaia:hunter", // 1
		"grimoireofgaia:kikimora", // 1
		"grimoireofgaia:kobold", // 1
		"grimoireofgaia:mandragora", // 1
		"grimoireofgaia:matango", // 1
		"grimoireofgaia:mimic", // 1
		"grimoireofgaia:mummy", // 1
		"grimoireofgaia:oni", // 1
		"grimoireofgaia:orc", // 1
		"grimoireofgaia:satyress", // 1
		"grimoireofgaia:selkie", // 1
		"grimoireofgaia:shaman", // 1
		"grimoireofgaia:siren", // 1
		"grimoireofgaia:sludge_girl", // 1
		"grimoireofgaia:succubus", // 1
		"grimoireofgaia:toad", // 1
		"grimoireofgaia:werecat", // 1
		"grimoireofgaia:wither_cow" // 1
		// gog3 ENTITY_VILLAGER_NAMES
//		"grimoireofgaia:creeper_girl",
//		"grimoireofgaia:ender_girl",
//		"grimoireofgaia:holstaurus",
//		"grimoireofgaia:slime_girl",
//		"grimoireofgaia:trader",
//		"grimoireofgaia:weresheep",
		// gog3 ENTITY_SUMMON_NAMES
//		"grimoireofgaia:butler",
//		"grimoireofgaia:sporeling"
	],

	stageThree.stage: [
		"fat_cat:fat_cat",
		// gog3 mobs
		"grimoireofgaia:anubis", // 2
		"grimoireofgaia:beholder", // 2
		"grimoireofgaia:bone_knight", // 2
		"grimoireofgaia:campfire", // 2
		"grimoireofgaia:cobblestone_golem", // 2
		"grimoireofgaia:dhampir", // 2
		"grimoireofgaia:dwarf", // 2
		"grimoireofgaia:ender_dragon_girl", // 2
		"grimoireofgaia:flesh_lich", // 2
		"grimoireofgaia:gelatinous_slime", // 2
		"grimoireofgaia:illager_fire", // 2
		"grimoireofgaia:mermaid", // 2
		"grimoireofgaia:minotaurus", // 2
		"grimoireofgaia:naga", // 2
		"grimoireofgaia:nine_tails", // 2
		"grimoireofgaia:sharko", // 2
		"grimoireofgaia:spriggan", // 2
		"grimoireofgaia:witch", // 2
		"grimoireofgaia:yeti", // 2
		"grimoireofgaia:yuki-onna" // 2
	],

	stageFour.stage: [
		"playerskins:playermob",
		//gog3 mobs
		"grimoireofgaia:chest", // 2or3
		"grimoireofgaia:gorgon", // 3
		"grimoireofgaia:minotaur", // 3
		"grimoireofgaia:sphinx", // 3
		"grimoireofgaia:valkyrie", // 3
		"grimoireofgaia:vampire" // 3	
	]
};

/*
	Init method to perform the logic for the script.
*/
function init() {
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
