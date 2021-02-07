import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stageTutorial;
import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;
import scripts.crafttweaker.stages.stageDisabled;

static stagedItems as IIngredient[][string] = {
	stageThree.stage: [
		<ancientwarfare:backpack:*>.withTag({SpecialIgnoredNBT: true},false),

		<ancientwarfarenpc:wooden_shield:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:stone_shield:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:iron_shield:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:gold_shield:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:diamond_shield:*>.withTag({SpecialIgnoredNBT: true},false),

		<ancientwarfarenpc:wooden_halberd:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:stone_halberd:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:iron_halberd:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:golden_halberd:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:diamond_halberd:*>.withTag({SpecialIgnoredNBT: true},false),


		<ancientwarfarenpc:wooden_lance:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:stone_lance:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:iron_lance:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:golden_lance:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:diamond_lance:*>.withTag({SpecialIgnoredNBT: true},false),

		<ancientwarfare:wooden_hammer:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfare:stone_hammer:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfare:iron_hammer:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfare:gold_hammer:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfare:diamond_hammer:*>.withTag({SpecialIgnoredNBT: true},false),


		<ancientwarfarenpc:wooden_spear:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:stone_spear:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:iron_spear:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:golden_spear:*>.withTag({SpecialIgnoredNBT: true},false),
		<ancientwarfarenpc:diamond_spear:*>.withTag({SpecialIgnoredNBT: true},false),

		<ancientwarfarevehicle:spawner:*>.withTag({spawnData: {level: 1}})
	]
};

static hiddenItems as IIngredient[] = [
];

static hiddenRemove as IIngredient[] = [
	<ancientwarfarenpc:npc_spawner:*>,
	<ancientwarfarestructure:structure_builder_ticked:*>,
	<ancientwarfarestructure:altar_long_cloth:*>,
	<ancientwarfarestructure:altar_candle:*>,
	<ancientwarfarestructure:protection_flag:*>,
	<ancientwarfarestructure:altar_short_cloth:*>,
];


function init() {
	var modIds as string[] = ["ancientwarfare","ancientwarfarestructure","ancientwarfarevehicle","ancientwarfarenpc","ancientwarfareautomation"];

	var modStages as string[string] = {};
	var doOverrides as bool[string] = {};

	for i,id in modIds{
		modStages[id] = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(id);
		doOverrides[id] = (modStages[id] != "");
	}

	for stageName, items in stagedItems {
		for i,item in items{
			print(item.items[0].definition.owner);
			// if (doOverrides[item.items[0].definition.owner] && stageName != modStages[item.items[0].definition.owner]) {
			// 	// ZenStager.addModItemOverrides(item.items[0].definition.owner, item);
			// }
		}


		ZenStager.getStage(stageName).addIngredients(items);
	}

	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
