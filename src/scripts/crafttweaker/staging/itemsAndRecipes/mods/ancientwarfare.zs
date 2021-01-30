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
	]
};

static hiddenItems as IIngredient[] = [
	// <ancientwarfarenpc:npc_spawner:*>,
	// <ancientwarfarestructure:structure_builder_ticked:*>,
	// <ancientwarfarestructure:altar_long_cloth:*>,
	// <ancientwarfarestructure:altar_candle:*>,
	// <ancientwarfarestructure:protection_flag:*>,
	// <ancientwarfarestructure:altar_short_cloth:*>
];

static hiddenRemove as IIngredient[] = [
];


function init() {
	var modIds as string[] = ["ancientwarfare","ancientwarfarestructure","ancientwarfarevehicle","ancientwarfarenpc","ancientwarfareautomation"];

	var modStages as string[string] = [];scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverrides as bool[string] = [];modStage != "";

	for id in modIds{
		modStages[id] = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(id);
		doOverrides[id] = (modStages[id] != "");
	}

	for stageName, items in stagedItems {
		for item in items{
			if (doOverrides[item.items[0].definition.owner] && stageName != modStages[item.items[0].definition.owner]) {
				ZenStager.addModItemOverrides(modId, item);
			}
		}


		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}
