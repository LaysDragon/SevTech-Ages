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
	stageZero.stage: [
		<millenaire:seljukturban:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:furboots:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:furlegs:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:furplate:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:furhelmet:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseguardboots:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseguardlegs:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseguardplate:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseguardhelmet:*>.withTag({SpecialIgnoredNBT: true},false)
	],
	stageOne.stage: [
		<millenaire:mayanmace:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:mayanhoe:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:mayanshovel:*>.withTag({SpecialIgnoredNBT: true},false)
	],
	stageTwo.stage: [
		<millenaire:byzantinemace:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:byzantinehoe:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:byzantineshovel:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:byzantineaxe:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:byzantinepickaxe:*>.withTag({SpecialIgnoredNBT: true},false),

		<millenaire:inuittrident:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:tachisword:*>.withTag({SpecialIgnoredNBT: true},false),

		<millenaire:inuitbow:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:seljukbow:*>.withTag({SpecialIgnoredNBT: true},false),

		<millenaire:japaneseredboots:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseredlegs:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseredplate:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseredhelmet:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseblueboots:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japanesebluelegs:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japaneseblueplate:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:japanesebluehelmet:*>.withTag({SpecialIgnoredNBT: true},false)
	],
	stageThree.stage: [
		<millenaire:yumibow:*>.withTag({SpecialIgnoredNBT: true},false)
	],
	stageFive.stage: [
		<millenaire:normanbroadsword:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:normanhoe:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:normanshovel:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:normanaxe:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:normanpickaxe:*>.withTag({SpecialIgnoredNBT: true},false),

		<millenaire:mayanpickaxe:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:mayanaxe:*>.withTag({SpecialIgnoredNBT: true},false),

		<millenaire:seljukscimitar:*>.withTag({SpecialIgnoredNBT: true},false),

		<millenaire:normanhelmet:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:normanplate:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:normanlegs:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:normanboots:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:byzantinehelmet:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:byzantineplate:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:byzantinelegs:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:byzantineboots:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:seljukhelmet:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:seljukplate:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:seljuklegs:*>.withTag({SpecialIgnoredNBT: true},false),
		<millenaire:seljukboots:*>.withTag({SpecialIgnoredNBT: true},false)
	],
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
