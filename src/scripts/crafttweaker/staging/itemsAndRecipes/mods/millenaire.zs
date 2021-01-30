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
	// stageOne.stage: [
	// 	<millenaire:*>
	// ],
	stageDisabled.stage: [
		<millenaire:negationwand>,
		<millenaire:summoningwand>
	]
};

static hiddenItems as IIngredient[] = [
];

static hiddenRemove as IIngredient[] = [
	<millenaire:negationwand>,
	<millenaire:summoningwand>
];


function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
	recipeUtil.hideItems(hiddenItems as IIngredient[]);
	recipeUtil.hideItems(hiddenRemove as IIngredient[], true);
}


// function initOverride() {
// 	for stageName, items in stagedItems {
// 		if (stageName != stageOne.stage) {
// 			for item in items {
// 				mods.ItemStages.removeItemStage(item);
// 				mods.ItemStages.addItemStage(stageName, item);
// 			}
// 		}
// 	}
// }
