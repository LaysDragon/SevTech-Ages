#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.three;

//Entire Mods into Stage three
var modIDs as string[] = [
	"immersivepetroleum"
];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage(STAGE, item);
    }
}

var itemsForStage as IIngredient[] = [
	<minecraft:grass>, //Ore Excavation
	<modularmachinery:blockfluidoutputhatch>,
	<primal:opal_hoe>,

	/*
		Items by "type"
	*/
	//Rails
	<betterwithmods:booster>,
	<minecraft:activator_rail>,
	<minecraft:detector_rail>,
	<minecraft:golden_rail>,
	<minecraft:rail>,
	<tconstruct:wood_rail>,
	<tconstruct:wood_rail_trapdoor>,

	//Redstone
	<cyclicmagic:builder_block>,
	<cyclicmagic:clock>,
	<cyclicmagic:placer_block>,
	<minecraft:comparator>,
	<minecraft:daylight_detector>,
	<minecraft:dropper>,
	<minecraft:redstone_lamp>,
	<minecraft:redstone_torch>,
	<minecraft:repeater>,

	//Nether
	<primal:arrow_quartz>,
	<primal:quartz_axe>,
	<primal:quartz_clippers>,
	<primal:quartz_gallagher>,
	<primal:quartz_hatchet>,
	<primal:quartz_hoe>,
	<primal:quartz_pickaxe>,
	<primal:quartz_saw>,
	<primal:quartz_shears>,
	<primal:quartz_shovel>,
	<primal:quartz_workblade>,
	<minecraft:quartz_block>,
	<minecraft:quartz_block:1>,
	<minecraft:quartz_block:2>,
	<tconstruct:firewood_stairs>,
	<tconstruct:lavawood_stairs>,

	/*
		Items by mod
	*/
	//Minecraft
	<minecraft:beacon>,
	<minecraft:brewing_stand>,
	<minecraft:dispenser>,
	<minecraft:enchanting_table>,
	<minecraft:glowstone>,
	<minecraft:glowstone_dust>,
	<minecraft:noteblock>,
	<minecraft:observer>,
	<minecraft:skull:1>,
	<minecraft:soul_sand>,
	<minecraft:trapped_chest>,

	//AbyssalCraft
	<abyssalcraft:crystal:*>,
	<abyssalcraft:crystalcluster2:*>,
	<abyssalcraft:crystalcluster:*>,
	<abyssalcraft:crystalfragment:*>,
	<abyssalcraft:crystalshard:*>,
	<abyssalcraft:dsglow>,
	<abyssalcraft:transmutationgem>,
	<abyssalcraft:transmutator>,

	//Cyclic Magic
	<cyclicmagic:block_hydrator>,
	<cyclicmagic:carbon_paper>,
	<cyclicmagic:charm_fire>,
	<cyclicmagic:charm_wing>,
	<cyclicmagic:chest_sack>,
	<cyclicmagic:chest_sack_empty>,
	<cyclicmagic:dropper_minecart>,
	<cyclicmagic:ender_blaze>,
	<cyclicmagic:ender_snow>,
	<cyclicmagic:ender_water>,
	<cyclicmagic:entity_detector>,
	<cyclicmagic:evoker_fang>,
	<cyclicmagic:fire_dark>,
	<cyclicmagic:fire_killer>,
	<cyclicmagic:gold_furnace_minecart>,
	<cyclicmagic:gold_minecart>,
	<cyclicmagic:horse_upgrade_jump>,
	<cyclicmagic:horse_upgrade_speed>,
	<cyclicmagic:magnet_anti_block>,
	<cyclicmagic:password_block>,
	<cyclicmagic:plate_push>,
	<cyclicmagic:plate_push_fast>,
	<cyclicmagic:plate_push_slowest>,
	<cyclicmagic:purple_boots>,
	<cyclicmagic:purple_chestplate>,
	<cyclicmagic:purple_helmet>,
	<cyclicmagic:stone_minecart>,
	<cyclicmagic:tool_auto_torch>,
	<cyclicmagic:tool_launcher>,
	<cyclicmagic:tool_push>,
	<cyclicmagic:tool_swap>,
	<cyclicmagic:turret_minecart>,
	<cyclicmagic:wand_hypno>,
	<cyclicmagic:wand_missile>,

	//Immersive Engineering
	<immersiveengineering:aluminum_scaffolding_stairs0>,
	<immersiveengineering:aluminum_scaffolding_stairs1>,
	<immersiveengineering:aluminum_scaffolding_stairs2>,
	<immersiveengineering:blueprint>,
	<immersiveengineering:bullet:1>,
	<immersiveengineering:bullet>,
	<immersiveengineering:chemthrower>,
	<immersiveengineering:cloth_device:1>,
	<immersiveengineering:cloth_device:2>,
	<immersiveengineering:cloth_device>,
	<immersiveengineering:connector:1>,
	<immersiveengineering:connector:2>,
	<immersiveengineering:connector:3>,
	<immersiveengineering:connector:4>,
	<immersiveengineering:connector:5>,
	<immersiveengineering:connector:6>,
	<immersiveengineering:connector:7>,
	<immersiveengineering:connector:8>,
	<immersiveengineering:connector:9>,
	<immersiveengineering:connector:10>,
	<immersiveengineering:connector:11>,
	<immersiveengineering:connector:12>,
	<immersiveengineering:connector:13>,
	<immersiveengineering:connector>,
	<immersiveengineering:conveyor>,
	<immersiveengineering:drill>,
	<immersiveengineering:drillhead:1>,
	<immersiveengineering:drillhead>,
	<immersiveengineering:earmuffs>,
	<immersiveengineering:faraday_suit_chest>,
	<immersiveengineering:faraday_suit_feet>,
	<immersiveengineering:faraday_suit_head>,
	<immersiveengineering:faraday_suit_legs>,
	<immersiveengineering:fluorescent_tube>,
	<immersiveengineering:graphite_electrode>,
	<immersiveengineering:jerrycan>,
	<immersiveengineering:material:4>,
	<immersiveengineering:material:5>,
	<immersiveengineering:material:6>,
	<immersiveengineering:material:7>,
	<immersiveengineering:material:8>,
	<immersiveengineering:material:9>,
	<immersiveengineering:material:10>,
	<immersiveengineering:material:11>,
	<immersiveengineering:material:12>,
	<immersiveengineering:material:13>,
	<immersiveengineering:material:14>,
	<immersiveengineering:material:15>,
	<immersiveengineering:material:16>,
	<immersiveengineering:material:17>,
	<immersiveengineering:material:18>,
	<immersiveengineering:material>,
	<immersiveengineering:metal>,
	<immersiveengineering:metal_decoration0:1>,
	<immersiveengineering:metal_decoration0:2>,
	<immersiveengineering:metal_decoration0:4>,
	<immersiveengineering:metal_decoration0:5>,
	<immersiveengineering:metal_decoration0:6>,
	<immersiveengineering:metal_decoration0:7>,
	<immersiveengineering:metal_decoration0>,
	<immersiveengineering:metal_decoration1:1>,
	<immersiveengineering:metal_decoration1:2>,
	<immersiveengineering:metal_decoration1:3>,
	<immersiveengineering:metal_decoration1:4>,
	<immersiveengineering:metal_decoration1:5>,
	<immersiveengineering:metal_decoration1:6>,
	<immersiveengineering:metal_decoration1:7>,
	<immersiveengineering:metal_decoration1>,
	<immersiveengineering:metal_decoration1_slab:1>,
	<immersiveengineering:metal_decoration1_slab:2>,
	<immersiveengineering:metal_decoration1_slab:3>,
	<immersiveengineering:metal_decoration1_slab:5>,
	<immersiveengineering:metal_decoration1_slab:6>,
	<immersiveengineering:metal_decoration1_slab:7>,
	<immersiveengineering:metal_decoration2:1>,
	<immersiveengineering:metal_decoration2:2>,
	<immersiveengineering:metal_decoration2:3>,
	<immersiveengineering:metal_decoration2:4>,
	<immersiveengineering:metal_decoration2:5>,
	<immersiveengineering:metal_decoration2>,
	<immersiveengineering:metal_device0:1>,
	<immersiveengineering:metal_device0:2>,
	<immersiveengineering:metal_device0:4>,
	<immersiveengineering:metal_device0:5>,
	<immersiveengineering:metal_device0:6>,
	<immersiveengineering:metal_device0>,
	<immersiveengineering:metal_device1:1>,
	<immersiveengineering:metal_device1:2>,
	<immersiveengineering:metal_device1:3>,
	<immersiveengineering:metal_device1:4>,
	<immersiveengineering:metal_device1:5>,
	<immersiveengineering:metal_device1:6>,
	<immersiveengineering:metal_device1:7>,
	<immersiveengineering:metal_device1:8>,
	<immersiveengineering:metal_device1:9>,
	<immersiveengineering:metal_device1:10>,
	<immersiveengineering:metal_device1:11>,
	<immersiveengineering:metal_device1:13>,
	<immersiveengineering:metal_device1>,
	<immersiveengineering:metal_ladder:1>,
	<immersiveengineering:metal_ladder:2>,
	<immersiveengineering:metal_ladder>,
	<immersiveengineering:powerpack>,
	<immersiveengineering:railgun>,
	<immersiveengineering:revolver>,
	<immersiveengineering:sheetmetal:1>,
	<immersiveengineering:sheetmetal:2>,
	<immersiveengineering:sheetmetal:3>,
	<immersiveengineering:sheetmetal:4>,
	<immersiveengineering:sheetmetal:5>,
	<immersiveengineering:sheetmetal:6>,
	<immersiveengineering:sheetmetal:7>,
	<immersiveengineering:sheetmetal:8>,
	<immersiveengineering:sheetmetal:9>,
	<immersiveengineering:sheetmetal:10>,
	<immersiveengineering:sheetmetal>,
	<immersiveengineering:sheetmetal_slab:1>,
	<immersiveengineering:sheetmetal_slab:2>,
	<immersiveengineering:sheetmetal_slab:3>,
	<immersiveengineering:sheetmetal_slab:4>,
	<immersiveengineering:sheetmetal_slab:5>,
	<immersiveengineering:sheetmetal_slab:6>,
	<immersiveengineering:sheetmetal_slab:7>,
	<immersiveengineering:sheetmetal_slab:8>,
	<immersiveengineering:sheetmetal_slab:10>,
	<immersiveengineering:sheetmetal_slab>,
	<immersiveengineering:shield>,
	<immersiveengineering:skyhook>,
	<immersiveengineering:speedloader>,
	<immersiveengineering:steel_scaffolding_stairs0>,
	<immersiveengineering:steel_scaffolding_stairs1>,
	<immersiveengineering:steel_scaffolding_stairs2>,
	<immersiveengineering:stone_decoration:1>,
	<immersiveengineering:stone_decoration:2>,
	<immersiveengineering:stone_decoration:3>,
	<immersiveengineering:stone_decoration:4>,
	<immersiveengineering:stone_decoration:5>,
	<immersiveengineering:stone_decoration:6>,
	<immersiveengineering:stone_decoration:7>,
	<immersiveengineering:stone_decoration:8>,
	<immersiveengineering:stone_decoration>,
	<immersiveengineering:stone_decoration_slab:1>,
	<immersiveengineering:stone_decoration_slab:2>,
	<immersiveengineering:stone_decoration_slab:4>,
	<immersiveengineering:stone_decoration_slab:5>,
	<immersiveengineering:stone_decoration_slab:6>,
	<immersiveengineering:stone_decoration_slab:7>,
	<immersiveengineering:stone_decoration_slab>,
	<immersiveengineering:stone_decoration_stairs_concrete>,
	<immersiveengineering:stone_decoration_stairs_concrete_leaded>,
	<immersiveengineering:stone_decoration_stairs_concrete_tile>,
	<immersiveengineering:stone_decoration_stairs_hempcrete>,
	<immersiveengineering:storage_slab:1>,
	<immersiveengineering:storage_slab:2>,
	<immersiveengineering:storage_slab:3>,
	<immersiveengineering:storage_slab:4>,
	<immersiveengineering:storage_slab:6>,
	<immersiveengineering:storage_slab:7>,
	<immersiveengineering:storage_slab:8>,
	<immersiveengineering:tool:1>,
	<immersiveengineering:tool:2>,
	<immersiveengineering:tool:3>,
	<immersiveengineering:toolbox>,
	<immersiveengineering:toolupgrade:1>,
	<immersiveengineering:toolupgrade:2>,
	<immersiveengineering:toolupgrade:3>,
	<immersiveengineering:toolupgrade:4>,
	<immersiveengineering:toolupgrade:5>,
	<immersiveengineering:toolupgrade:6>,
	<immersiveengineering:toolupgrade:7>,
	<immersiveengineering:toolupgrade:8>,
	<immersiveengineering:toolupgrade:9>,
	<immersiveengineering:toolupgrade:10>,
	<immersiveengineering:toolupgrade:11>,
	<immersiveengineering:toolupgrade:12>,
	<immersiveengineering:toolupgrade:13>,
	<immersiveengineering:toolupgrade>,
	<immersiveengineering:treated_wood:1>,
	<immersiveengineering:treated_wood:2>,
	<immersiveengineering:treated_wood>,
	<immersiveengineering:treated_wood_slab:1>,
	<immersiveengineering:treated_wood_slab:2>,
	<immersiveengineering:treated_wood_slab>,
	<immersiveengineering:treated_wood_stairs0>,
	<immersiveengineering:treated_wood_stairs1>,
	<immersiveengineering:treated_wood_stairs2>,
	<immersiveengineering:wirecoil:1>,
	<immersiveengineering:wirecoil:2>,
	<immersiveengineering:wirecoil:3>,
	<immersiveengineering:wirecoil:4>,
	<immersiveengineering:wirecoil:5>,
	<immersiveengineering:wirecoil>,
	<immersiveengineering:wooden_decoration:1>,
	<immersiveengineering:wooden_decoration>,
	<immersiveengineering:wooden_device0:1>,
	<immersiveengineering:wooden_device0:2>,
	<immersiveengineering:wooden_device0:3>,
	<immersiveengineering:wooden_device0:4>,
	<immersiveengineering:wooden_device0:5>,
	<immersiveengineering:wooden_device0:6>,
	<immersiveengineering:wooden_device0:7>,
	<immersiveengineering:wooden_device0>,
	<immersiveengineering:wooden_device1:1>,
	<immersiveengineering:wooden_device1:3>,
	<immersiveengineering:wooden_device1:4>,
	<immersiveengineering:wooden_device1>,
	<immersivetech:connectors>,

	//Mekanism
	<mekanism:balloon:1>,
	<mekanism:balloon:2>,
	<mekanism:balloon:3>,
	<mekanism:balloon:4>,
	<mekanism:balloon:5>,
	<mekanism:balloon:6>,
	<mekanism:balloon:7>,
	<mekanism:balloon:8>,
	<mekanism:balloon:9>,
	<mekanism:balloon:10>,
	<mekanism:balloon:11>,
	<mekanism:balloon:12>,
	<mekanism:balloon:13>,
	<mekanism:balloon:14>,
	<mekanism:balloon:15>,
	<mekanism:balloon>,

	//Tinkers'
	<tcomplement:porcelain_tank>,
	<tconstruct:brownstone:1>,
	<tconstruct:brownstone:2>,
	<tconstruct:brownstone_slab2:3>,
	<tconstruct:brownstone_slab2>,
	<tconstruct:brownstone_slab:1>,
	<tconstruct:brownstone_slab:2>,
	<tconstruct:brownstone_slab:7>,
	<tconstruct:brownstone_slab>,
	<tconstruct:brownstone_stairs_creeper>,
	<tconstruct:brownstone_stairs_paver>,
	<tconstruct:brownstone_stairs_road>,
	<tconstruct:brownstone_stairs_rough>,
	<tconstruct:brownstone_stairs_smooth>,
	<tconstruct:brownstone_stairs_tile>,
	<tconstruct:edible:1>,
	<tconstruct:edible:2>,
	<tconstruct:edible:4>,
	<tconstruct:materials:12>,
	<tconstruct:materials:13>,
	<tconstruct:materials:14>,
	<tconstruct:seared:1>,
	<tconstruct:seared:2>,
	<tconstruct:seared:3>,
	<tconstruct:seared:4>,
	<tconstruct:seared:5>,
	<tconstruct:seared:6>,
	<tconstruct:seared:7>,
	<tconstruct:seared:8>,
	<tconstruct:seared:9>,
	<tconstruct:seared:10>,
	<tconstruct:seared:11>,
	<tconstruct:seared>,
	<tconstruct:seared_slab2:1>,
	<tconstruct:seared_slab2:2>,
	<tconstruct:seared_slab2:3>,
	<tconstruct:seared_slab2>,
	<tconstruct:seared_slab:1>,
	<tconstruct:seared_slab:2>,
	<tconstruct:seared_slab:3>,
	<tconstruct:seared_slab:4>,
	<tconstruct:seared_slab:5>,
	<tconstruct:seared_slab:6>,
	<tconstruct:seared_slab:7>,
	<tconstruct:seared_slab>,
	<tconstruct:seared_tank>,
	<tconstruct:slime:1>,
	<tconstruct:slime:2>,
	<tconstruct:slime:4>,
	<tconstruct:slime_boots:1>,
	<tconstruct:slime_boots:2>,
	<tconstruct:slime_boots:4>,
	<tconstruct:slime_congealed:1>,
	<tconstruct:slime_congealed:2>,
	<tconstruct:slime_congealed:4>,
	<tconstruct:soil:2>,
	<tconstruct:soil:5>,
	<tconstruct:throwball>,
	<tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 1 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 2 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 4 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 6 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 8 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 5 as short}}),

	//Better With Mods
	<betterwithaddons:ancestry_infuser>,
	<betterwithaddons:bag:6>,
	<betterwithaddons:bag:7>,
	<betterwithaddons:bag:11>,
	<betterwithaddons:bag:12>,
	<betterwithaddons:bag:14>,
	<betterwithaddons:bag:15>,
	<betterwithaddons:bag:16>,
	<betterwithaddons:banner_detector>,
	<betterwithaddons:block_matcher>,
	<betterwithaddons:bundle:2>,
	<betterwithaddons:chandelier>,
	<betterwithaddons:ecksie_sapling:1>,
	<betterwithaddons:ecksie_sapling:2>,
	<betterwithaddons:ecksie_sapling:3>,
	<betterwithaddons:ecksie_sapling:4>,
	<betterwithaddons:ecksie_sapling:5>,
	<betterwithaddons:ecksie_sapling:6>,
	<betterwithaddons:ecksie_sapling:7>,
	<betterwithaddons:ecksie_sapling:8>,
	<betterwithaddons:ecksie_sapling>,
	<betterwithaddons:japanmat:13>,
	<betterwithaddons:japanmat:14>,
	<betterwithaddons:japanmat:15>,
	<betterwithaddons:japanmat:16>,
	<betterwithaddons:japanmat:17>,
	<betterwithaddons:japanmat:18>,
	<betterwithaddons:japanmat:19>,
	<betterwithaddons:japanmat:22>,
	<betterwithaddons:japanmat:24>,
	<betterwithaddons:japanmat:25>,
	<betterwithaddons:slat>,
	<betterwithaddons:soulsand_pile>,
	<betterwithaddons:worldshard>,
	<betterwithaddons:wrought_bars>,
	<betterwithaddons:wrought_lamp>,
	<betterwithmods:aesthetic:3>,
	<betterwithmods:aesthetic:10>,
	<betterwithmods:bellows:1>,
	<betterwithmods:hibachi>,
	<betterwithmods:infernal_enchanter>,
	<betterwithmods:lens>,
	<betterwithmods:light>,
	<betterwithmods:material:14>,
	<betterwithmods:material:16>,
	<betterwithmods:material:17>,
	<betterwithmods:material:34>,
	<betterwithmods:material:42>,
	<betterwithmods:material:47>,
	<betterwithmods:material:50>,
	<betterwithmods:mining_charge>,
	<betterwithmods:single_machine:2>,
	<betterwithmods:stake>,
	<betterwithmods:steel_anvil>,
	<betterwithmods:steel_gearbox>,

	//Bibliocraft
	<bibliocraft:atlasplate>,
	<bibliocraft:bell>,
	<bibliocraft:bibliochase>,
	<bibliocraft:biblioclipboard>,
	<bibliocraft:bibliodrill>,
	<bibliocraft:biblioglasses:1>,
	<bibliocraft:biblioglasses:2>,
	<bibliocraft:biblioglasses>,
	<bibliocraft:biblioredbook>.withTag({redstonebook: "by James Maxwell"}),
	<bibliocraft:clock:*>,
	<bibliocraft:cookiejar>,
	<bibliocraft:deathcompass>,
	<bibliocraft:dinnerplate>,
	<bibliocraft:discrack>,
	<bibliocraft:enchantedplate>,
	<bibliocraft:paintingpress>,
	<bibliocraft:potionshelf:*>,
	<bibliocraft:printingpress>,
	<bibliocraft:printplate>,
	<bibliocraft:tape>,
	<bibliocraft:tapemeasure>,
	<bibliocraft:typesettingtable>,
	<bibliocraft:typewriter:*>,

	//Storage Drawers
	<storagedrawers:keybutton:1>,
	<storagedrawers:keybutton:2>,
	<storagedrawers:keybutton:3>,
	<storagedrawers:keybutton>,
	<storagedrawers:upgrade_redstone:1>,
	<storagedrawers:upgrade_redstone:2>,
	<storagedrawers:upgrade_redstone>,
	<storagedrawers:upgrade_status:1>,
	<storagedrawers:upgrade_status>,
	<storagedrawers:upgrade_void>,

	//Extended Crafting
	<extendedcrafting:frame>,
	<extendedcrafting:lamp:1>,
	<extendedcrafting:lamp>,
	<extendedcrafting:material:7>,
	<extendedcrafting:material:8>,
	<extendedcrafting:material:9>,
	<extendedcrafting:material:14>,
	<extendedcrafting:material:15>,
	<extendedcrafting:pedestal>,
	<extendedcrafting:storage:1>,
	<extendedcrafting:table_advanced>,
	<extendedcrafting:table_basic>,
	<extendedcrafting:trimmed:1>,
	<extendedcrafting:trimmed>,

	//ViesCraft
	<vc:airship_frame>,
	<vc:airship_workbench>,
	<vc:airships/item_airship_v1:1>,
	<vc:airships/item_airship_v1:2>,
	<vc:airships/item_airship_v1:3>,
	<vc:airships/item_airship_v1:4>,
	<vc:airships/item_airship_v1:5>,
	<vc:airships/item_airship_v1>,
	<vc:airships/item_airship_v2:1>,
	<vc:airships/item_airship_v2:2>,
	<vc:airships/item_airship_v2:3>,
	<vc:airships/item_airship_v2:4>,
	<vc:airships/item_airship_v2:5>,
	<vc:airships/item_airship_v2>,
	<vc:airships/item_airship_v3:1>,
	<vc:airships/item_airship_v3:2>,
	<vc:airships/item_airship_v3:3>,
	<vc:airships/item_airship_v3:4>,
	<vc:airships/item_airship_v3:5>,
	<vc:airships/item_airship_v3>,
	<vc:airships/item_airship_v4:1>,
	<vc:airships/item_airship_v4:2>,
	<vc:airships/item_airship_v4:3>,
	<vc:airships/item_airship_v4:4>,
	<vc:airships/item_airship_v4:5>,
	<vc:airships/item_airship_v4>,
	<vc:airships/item_creative_airship_v1>,
	<vc:airships/item_creative_airship_v2>,
	<vc:airships/item_creative_airship_v3>,
	<vc:airships/item_creative_airship_v4>,
	<vc:guidebook_main>,
	<vc:item_dismounter_normal>,
	<vc:item_dismounter_player>,
	<vc:item_logic_chip>,
	<vc:modules/item_module_type:1>,
	<vc:modules/item_module_type:2>,
	<vc:modules/item_module_type:3>,
	<vc:modules/item_module_type:4>,
	<vc:modules/item_module_type:5>,
	<vc:modules/item_module_type:6>,
	<vc:modules/item_module_type:7>,
	<vc:modules/item_module_type:8>,
	<vc:modules/item_module_type:9>,
	<vc:modules/item_module_type:10>,
	<vc:modules/item_module_type:11>,
	<vc:modules/item_module_type:12>,
	<vc:modules/item_module_type:13>,
	<vc:modules/item_module_type:14>,
	<vc:modules/item_module_type:15>,
	<vc:modules/item_module_type:16>,
	<vc:modules/item_module_type:17>,
	<vc:modules/item_module_type:18>,
	<vc:modules/item_module_type:19>,
	<vc:modules/item_module_type:20>,
	<vc:modules/item_module_type:21>,
	<vc:modules/item_module_type:22>,
	<vc:modules/item_module_type:23>,
	<vc:modules/item_module_type:24>,
	<vc:modules/item_module_type>,
	<vc:upgrades/upgrade_airship_balloon>,
	<vc:upgrades/upgrade_airship_core>,
	<vc:upgrades/upgrade_airship_engine>,
	<vc:upgrades/upgrade_airship_frame>,
	<vc:viesoline_pellets>,

	//Dark Utils
	<darkutils:charm_agression>,
	<darkutils:charm_null>,
	<darkutils:ender_hopper>,
	<darkutils:ender_tether>,
	<darkutils:fake_tnt>,
	<darkutils:filter:*>,
	<darkutils:filter_inverted:*>,
	<darkutils:focus_sash>,
	<darkutils:grate>,
	<darkutils:material:1>,
	<darkutils:material:2>,
	<darkutils:material:3>,
	<darkutils:material>,
	<darkutils:timer>,
	<darkutils:trap_move_fast>,
	<darkutils:trap_move_hyper>,
	<darkutils:trap_tile:3>,
	<darkutils:trap_tile:5>,
	<darkutils:update_detector>,
	<darkutils:wither_block:1>,
	<darkutils:wither_block:2>,
	<darkutils:wither_block:3>,
	<darkutils:wither_block:4>,
	<darkutils:wither_block:5>,
	<darkutils:wither_block>,

	//Actually Additions
	<actuallyadditions:item_axe_obsidian>,
	<actuallyadditions:item_boots_obsidian>,
	<actuallyadditions:item_chest_obsidian>,
	<actuallyadditions:item_food:1>,
	<actuallyadditions:item_food:2>,
	<actuallyadditions:item_food:3>,
	<actuallyadditions:item_food:4>,
	<actuallyadditions:item_food:5>,
	<actuallyadditions:item_food:6>,
	<actuallyadditions:item_food:7>,
	<actuallyadditions:item_food:9>,
	<actuallyadditions:item_food:10>,
	<actuallyadditions:item_food:11>,
	<actuallyadditions:item_food:13>,
	<actuallyadditions:item_food:15>,
	<actuallyadditions:item_food:18>,
	<actuallyadditions:item_food:19>,
	<actuallyadditions:item_food:20>,
	<actuallyadditions:item_food>,
	<actuallyadditions:item_helm_obsidian>,
	<actuallyadditions:item_hoe_obsidian>,
	<actuallyadditions:item_knife>,
	<actuallyadditions:item_misc:2>,
	<actuallyadditions:item_misc:3>,
	<actuallyadditions:item_misc>,
	<actuallyadditions:item_pants_obsidian>,
	<actuallyadditions:item_pickaxe_obsidian>,
	<actuallyadditions:item_shovel_obsidian>,
	<actuallyadditions:item_sword_obsidian>,
	<actuallyadditions:obsidian_paxel>,

	//Steve's Carts
	<stevescarts:blockactivator>,
	<stevescarts:blockadvdetector>,
	<stevescarts:blockcargomanager>,
	<stevescarts:blockdetector:4>,
	<stevescarts:blockjunction>,
	<stevescarts:cartmodule:2>,
	<stevescarts:cartmodule:3>,
	<stevescarts:cartmodule:4>,
	<stevescarts:cartmodule:5>,
	<stevescarts:cartmodule:6>,
	<stevescarts:cartmodule:7>,
	<stevescarts:cartmodule:8>,
	<stevescarts:cartmodule:9>,
	<stevescarts:cartmodule:10>,
	<stevescarts:cartmodule:11>,
	<stevescarts:cartmodule:13>,
	<stevescarts:cartmodule:14>,
	<stevescarts:cartmodule:15>,
	<stevescarts:cartmodule:16>,
	<stevescarts:cartmodule:19>,
	<stevescarts:cartmodule:20>,
	<stevescarts:cartmodule:21>,
	<stevescarts:cartmodule:22>,
	<stevescarts:cartmodule:24>,
	<stevescarts:cartmodule:25>,
	<stevescarts:cartmodule:26>,
	<stevescarts:cartmodule:27>,
	<stevescarts:cartmodule:28>,
	<stevescarts:cartmodule:29>,
	<stevescarts:cartmodule:30>,
	<stevescarts:cartmodule:31>,
	<stevescarts:cartmodule:32>,
	<stevescarts:cartmodule:33>,
	<stevescarts:cartmodule:34>,
	<stevescarts:cartmodule:36>,
	<stevescarts:cartmodule:37>,
	<stevescarts:cartmodule:38>,
	<stevescarts:cartmodule:39>,
	<stevescarts:cartmodule:40>,
	<stevescarts:cartmodule:41>,
	<stevescarts:cartmodule:42>,
	<stevescarts:cartmodule:43>,
	<stevescarts:cartmodule:44>,
	<stevescarts:cartmodule:49>,
	<stevescarts:cartmodule:51>,
	<stevescarts:cartmodule:53>,
	<stevescarts:cartmodule:58>,
	<stevescarts:cartmodule:59>,
	<stevescarts:cartmodule:61>,
	<stevescarts:cartmodule:62>,
	<stevescarts:cartmodule:63>,
	<stevescarts:cartmodule:64>,
	<stevescarts:cartmodule:65>,
	<stevescarts:cartmodule:66>,
	<stevescarts:cartmodule:67>,
	<stevescarts:cartmodule:68>,
	<stevescarts:cartmodule:69>,
	<stevescarts:cartmodule:70>,
	<stevescarts:cartmodule:71>,
	<stevescarts:cartmodule:72>,
	<stevescarts:cartmodule:73>,
	<stevescarts:cartmodule:75>,
	<stevescarts:cartmodule:76>,
	<stevescarts:cartmodule:77>,
	<stevescarts:cartmodule:79>,
	<stevescarts:cartmodule:80>,
	<stevescarts:cartmodule:81>,
	<stevescarts:cartmodule:82>,
	<stevescarts:cartmodule:83>,
	<stevescarts:cartmodule:84>,
	<stevescarts:cartmodule:85>,
	<stevescarts:cartmodule:86>,
	<stevescarts:cartmodule:89>,
	<stevescarts:cartmodule:93>,
	<stevescarts:cartmodule:94>,
	<stevescarts:cartmodule:95>,
	<stevescarts:cartmodule:101>,
	<stevescarts:modulecomponents:0>,
	<stevescarts:modulecomponents:1>,
	<stevescarts:modulecomponents:2>,
	<stevescarts:modulecomponents:3>,
	<stevescarts:modulecomponents:4>,
	<stevescarts:modulecomponents:5>,
	<stevescarts:modulecomponents:6>,
	<stevescarts:modulecomponents:13>,
	<stevescarts:modulecomponents:14>,
	<stevescarts:modulecomponents:20>,
	<stevescarts:modulecomponents:23>,
	<stevescarts:modulecomponents:24>,
	<stevescarts:modulecomponents:29>,
	<stevescarts:modulecomponents:30>,
	<stevescarts:modulecomponents:31>,
	<stevescarts:modulecomponents:32>,
	<stevescarts:modulecomponents:33>,
	<stevescarts:modulecomponents:34>,
	<stevescarts:modulecomponents:35>,
	<stevescarts:modulecomponents:36>,
	<stevescarts:modulecomponents:37>,
	<stevescarts:modulecomponents:38>,
	<stevescarts:modulecomponents:40>,
	<stevescarts:modulecomponents:41>,
	<stevescarts:modulecomponents:42>,
	<stevescarts:modulecomponents:43>,
	<stevescarts:modulecomponents:45>,
	<stevescarts:modulecomponents:60>,
	<stevescarts:modulecomponents:61>,
	<stevescarts:modulecomponents:62>,
	<stevescarts:modulecomponents:63>,
	<stevescarts:modulecomponents:64>,
	<stevescarts:modulecomponents:65>,
	<stevescarts:modulecomponents:80>,
	<stevescarts:modulecomponents:81>,
	<stevescarts:modulecomponents:82>,
	<stevescarts:modulecomponents:83>,
	<stevescarts:modulecomponents:84>,
	<stevescarts:upgrade:2>,
	<stevescarts:upgrade:3>,
	<stevescarts:upgrade:8>,
	<stevescarts:upgrade:15>,
	<stevescarts:upgrade:18>,
	<stevescarts:upgrade>,

	//Buildcraft
	<buildcraftcore:wrench>,
	<buildcraftfactory:tank>,
	<buildcraftlib:guide>,
	<buildcrafttransport:pipe_clay_fluid>,
	<buildcrafttransport:pipe_clay_item>,
	<buildcrafttransport:pipe_cobble_fluid>,
	<buildcrafttransport:pipe_cobble_item>,
	<buildcrafttransport:pipe_iron_fluid>,
	<buildcrafttransport:pipe_iron_item>,
	<buildcrafttransport:pipe_quartz_fluid>,
	<buildcrafttransport:pipe_quartz_item>,
	<buildcrafttransport:pipe_sandstone_fluid>,
	<buildcrafttransport:pipe_sandstone_item>,
	<buildcrafttransport:pipe_stone_fluid>,
	<buildcrafttransport:pipe_stone_item>,
	<buildcrafttransport:pipe_structure>,
	<buildcrafttransport:pipe_void_fluid>,
	<buildcrafttransport:pipe_void_item>,
	<buildcrafttransport:pipe_wood_fluid>,
	<buildcrafttransport:pipe_wood_item>,
	<buildcrafttransport:plug_blocker>,
	<buildcrafttransport:waterproof>,

	//Wither Skeleton Tweaks
	<witherskelefix:blade2>,
	<witherskelefix:blade>,
	<witherskelefix:fragment>,

	//Quark
	<quark:blaze_lantern>,
	<quark:magma_bricks>,
	<quark:magma_bricks_slab>,
	<quark:magma_bricks_stairs>,
	<quark:quartz_wall>,
	<quark:soul_powder>,
	<quark:soul_sandstone:1>,
	<quark:soul_sandstone:2>,
	<quark:soul_sandstone>,
	<quark:soul_sandstone_slab>,

	//YoYo
	//TODO: Why isnt this handled by tcon part staging
	<yoyos:cord>,

	//Chisel
	<chisel:auto_chisel>
];

for item in itemsForStage {
	mods.recipestages.Recipes.setRecipeStage(STAGE, item);
}
