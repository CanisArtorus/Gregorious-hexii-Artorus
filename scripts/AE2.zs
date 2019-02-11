// by Canis Artorus
// gtPress recipes to match changes to AE2

#modloaded appliedenergistics2 extracells gregapi_post

// import mods.MTUtilsGT;

//mods.MTUtilsGT.removeCustomRecipe("gt.recipe.press", );

mods.nei.NEI.hide(<appliedenergistics2:item.ItemFacade>);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 16, 75, [10000], 
	[<appliedenergistics2:item.ItemMultiMaterial:23>, <gregtech:gt.meta.plateTiny:790>, <gregtech:gt.meta.plate:130>], <appliedenergistics2:item.ItemMultiMaterial:25>);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 16, 75, [10000],
	[<appliedenergistics2:item.ItemMultiMaterial:23>, <gregtech:gt.meta.plateGemTiny:8300>,
	<gregtech:gt.meta.plate:130>], <appliedenergistics2:item.ItemMultiMaterial:28>);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 16, 75, [10000],
	[<gregtech:gt.meta.plateGem:8389>, <appliedenergistics2:item.ItemMultiMaterial:44>,
	<gregtech:gt.meta.plate:8636>], <appliedenergistics2:item.ItemMultiPart:300>);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 16, 75, [10000],
	[<gregtech:gt.meta.plateGem:8389>, <appliedenergistics2:item.ItemMultiMaterial:43>,
	<gregtech:gt.meta.plate:8636>], <appliedenergistics2:item.ItemMultiPart:320>);

# need skystone for controller, without meteors		// 6.07.06 fix.
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", false, [10000], <minecraft:obsidian>, <liquid:molten.enderpearl> *250, null, <appliedenergistics2:tile.BlockSkyStone>);

# coveredCable
<ore:plateRubber>.addAll(<ore:sheetRubber>);
<ore:sheetRubber>.mirror(<ore:plateRubber>);
for i in [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15, 16] as int[] {
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.laminator", false, 16, 16, [10000], 
	[<appliedenergistics2:item.ItemMultiPart>.definition.makeStack(i), <gregtech:gt.meta.plate:8217>], <appliedenergistics2:item.ItemMultiPart:36>);
}

# cable as quartz wire
mods.MTUtilsGT.addCustomRecipe("gt.recipe.extruder", false, 32, 50, [10000], 
	[<appliedenergistics2:item.ItemMultiMaterial:2>, <gregtech:gt.multiitem.technological:10207> * 0], <appliedenergistics2:item.ItemMultiPart:140> *2);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.extruder", false, 32, 50, [10000], 
	[<appliedenergistics2:item.ItemMultiMaterial:2>, <gregtech:gt.multiitem.technological:10007> * 0], <appliedenergistics2:item.ItemMultiPart:140> *2);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.loom", false, 16, 16, [10000],
	[<gregtech:gt.meta.stick:8347>, <gregapi:gt.integrated_circuit:0> *0], <appliedenergistics2:item.ItemMultiPart:140>);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.loom", false, 16,75, [10000],
	[<appliedenergistics2:item.ItemMultiPart:140>, <appliedenergistics2:item.ItemMultiMaterial:8>], <appliedenergistics2:item.ItemMultiPart:16>);
	
# ExtraCells
var advHouse	= <extracells:storage.casing:0>;
var jarHouse	= <extracells:storage.casing:1>;
var tankHouse	= <extracells:storage.casing:2>;
var disk64		= <appliedenergistics2:item.ItemMultiMaterial:38>;
var disk256i	= <extracells:storage.component:0>;
var disk1024i	= <extracells:storage.component:1>;
var disk4096i	= <extracells:storage.component:2>;
var disk16384i	= <extracells:storage.component:3>;
var disk1f		= <extracells:storage.component:4>;
var disk4f		= <extracells:storage.component:5>;
var disk16f		= <extracells:storage.component:6>;
var disk64f		= <extracells:storage.component:7>;
var disk256f	= <extracells:storage.component:8>;
var disk1024f	= <extracells:storage.component:9>;
var disk4096f	= <extracells:storage.component:10>;
var disk1g		= <extracells:storage.component:11>;
var disk4g		= <extracells:storage.component:12>;
var disk16g		= <extracells:storage.component:13>;
var disk64g		= <extracells:storage.component:14>;
var disk256g	= <extracells:storage.component:15>;
var disk1024g	= <extracells:storage.component:16>;
var disk4096g	= <extracells:storage.component:17>;
var jar1		= <extracells:storage.fluid:*>;
var tank1		= <extracells:storage.gas:*>;
var bin256		= <extracells:storage.physical:0>;
var bin1024		= <extracells:storage.physical:1>;
var bin4096		= <extracells:storage.physical:2>;
var bin16M		= <extracells:storage.physical:3>;

var quartzTank	= <extracells:certustank>;
var logicProc	= <appliedenergistics2:item.ItemMultiMaterial:22>;
var calcProc	= <appliedenergistics2:item.ItemMultiMaterial:23>;
var enggProc	= <appliedenergistics2:item.ItemMultiMaterial:24>;
var Screwdriver	= <ore:craftingToolScrewdriver>;
var HHamer		= <ore:craftingToolHardHammer>;
var disk		= <ore:plateAluminium>;
var fluixPlate	= <ore:plateGemFluix>;
var chargedPlate= <ore:plateGemChargedCertusQuartz>;
var certusScrew	= <ore:screwCertusQuartz>;
var fluixScrew	= <ore:screwFluix>;
var netherScrew	= <ore:screwQuartz>;
var crystal		= <ore:itemCertusQuartz>;	// [<appliedenergistics2:item.ItemMultiMaterial:0>, <appliedenergistics2:item.ItemMultiMaterial:10>] as IIngredient;
var qGlass		= <appliedenergistics2:tile.BlockQuartzGlass>;
var blueDye		= <ore:dyeBlue>;
var yellowDye	= <ore:dyeYellow>;
var redWire		= <ore:wireFineRedAlloy>;
var sigWire		= <ore:wireFineSignalum>;
var lumWire		= <ore:wireFineLumium>;
var sigCirc		= <gregtech:gt.multiitem.technological:30015>;

recipes.remove(jar1);
recipes.remove(tank1);
recipes.remove(bin256);
recipes.remove(bin1024);
recipes.remove(bin4096);
recipes.remove(bin16M);
recipes.remove(<extracells:storage.component:*>);
recipes.remove(advHouse);
recipes.remove(jarHouse);
recipes.remove(tankHouse);

# disks from components only
recipes.addShapeless(bin256, [disk256i, advHouse]);
recipes.addShapeless(bin1024, [disk1024i, advHouse]);
recipes.addShapeless(bin4096, [disk4096i, advHouse]);
recipes.addShapeless(bin16M, [disk16384i, advHouse]);
for i in [0,1,2,3,4,5,6] as int[] {
	recipes.addShapeless(jar1.definition.makeStack(i), [disk1f.definition.makeStack(i + 4), jarHouse]);
	recipes.addShapeless(tank1.definition.makeStack(i), [disk1g.definition.makeStack(i + 11), tankHouse]);
	# component retrieval from disks
	recipes.addShapeless(disk1f.definition.makeStack(i + 4), [jar1.definition.makeStack(i).transformReplace(jarHouse)]);
	recipes.addShapeless(disk1g.definition.makeStack(i + 11), [tank1.definition.makeStack(i).transformReplace(tankHouse)]);
}

# housings
recipes.addShaped(advHouse, [[Screwdriver, fluixPlate, fluixScrew],[sigWire, <ore:gemDiamond>, sigWire],[fluixScrew, disk, HHamer]]);
recipes.addShaped(jarHouse, [[Screwdriver, fluixPlate, certusScrew],[redWire, quartzTank, redWire],[certusScrew, disk, HHamer]]);
recipes.addShaped(tankHouse, [[Screwdriver, chargedPlate, netherScrew], [redWire, quartzTank, redWire],[netherScrew, disk, HHamer]]);

# components - large item
recipes.addShaped(disk256i, [[lumWire, enggProc, sigWire],[disk64, logicProc, disk64],[sigWire, disk64, lumWire]]);
recipes.addShaped(disk1024i, [[lumWire, enggProc, lumWire],[disk256i, logicProc, disk256i],[lumWire, disk256i, lumWire]]);
recipes.addShaped(disk4096i, [[sigCirc, crystal, lumWire],[disk1024i, enggProc, disk1024i],[lumWire, disk1024i, sigCirc]]);
recipes.addShaped(disk16384i, [[sigCirc, calcProc, sigCirc],[disk4096i, enggProc, disk4096i],[sigCirc, disk4096i, sigCirc]]);

# component - fluid
recipes.addShaped(disk1f, [[redWire, crystal, blueDye],[crystal, logicProc, crystal],[blueDye, crystal, redWire]]);
recipes.addShaped(disk4f, [[redWire, calcProc, redWire],[disk1f, qGlass, disk1f],[redWire, disk1f, redWire]]);
recipes.addShaped(disk16f, [[sigWire, calcProc, blueDye],[disk4f, qGlass, disk4f],[blueDye, disk4f, sigWire]]);
recipes.addShaped(disk64f, [[sigWire, enggProc, sigWire],[disk16f, qGlass, disk16f],[sigWire, disk16f, sigWire]]);
recipes.addShaped(disk256f, [[lumWire, enggProc, sigWire],[disk64f, logicProc, disk64f],[sigWire, disk64f, lumWire]]);
recipes.addShaped(disk1024f, [[lumWire, enggProc, lumWire],[disk256f, logicProc, disk256f],[lumWire, disk256f, lumWire]]);
recipes.addShaped(disk4096f, [[sigCirc, blueDye, sigCirc],[disk1024f, enggProc, disk1024f],[sigCirc, disk1024f, sigCirc]]);

# component - gas
recipes.addShaped(disk1g, [[redWire, crystal, yellowDye],[crystal, logicProc, crystal],[yellowDye, crystal, redWire]]);
recipes.addShaped(disk4g, [[redWire, calcProc, redWire],[disk1g, qGlass, disk1g],[redWire, disk1g, redWire]]);
recipes.addShaped(disk16g, [[sigWire, calcProc, yellowDye],[disk4g, qGlass, disk4g],[yellowDye, disk4g, sigWire]]);
recipes.addShaped(disk64g, [[sigWire, enggProc, sigWire],[disk16g, qGlass, disk16g],[sigWire, disk16g, sigWire]]);
recipes.addShaped(disk256g, [[lumWire, enggProc, sigWire],[disk64g, logicProc, disk64g],[sigWire, disk64g, lumWire]]);
recipes.addShaped(disk1024g, [[lumWire, enggProc, lumWire],[disk256g, logicProc, disk256g],[lumWire, disk256g, lumWire]]);
recipes.addShaped(disk4096g, [[sigCirc, yellowDye, sigCirc],[disk1024g, enggProc, disk1024g],[sigCirc, disk1024g, sigCirc]]);


# Wireless Crafting Terminal
// recipes.addShapeless(<extracells:terminal.universal.wireless>.withTag({type:3b, modules:31b, key:"", power:0.0d }), [<extracells:terminal.universal.wireless>.onlyWithTag({type:3b,modules:15b, key:"", power:0.0d}), <ore:craftingTableWood>]);
// recipes.addShapeless(<extracells:terminal.universal.wireless>.withTag({type:3b, modules:31b, key:"", power:0.0d}), [<extracells:terminal.universal.wireless>.onlyWithTag({type:3b,modules:15b}), <ore:craftingTableWood>]);
recipes.addShapeless(<extracells:terminal.universal.wireless>, [<extracells:terminal.universal.wireless>.marked("term"), <ore:craftingTableWood>], function(output, inputs, crafting) {
	var moduleIn = inputs.term.tag.modules;
	// inputs.term.tag.modules &= 16;
	// return inputs.term
	if (moduleIn >= 16) {
		return inputs.term;
	} else {
		if ( (moduleIn & 1) == 1) {
			return inputs.term.updateTag({modules: (inputs.term.tag.modules + 16)});
		} else {
			return inputs.term;
		}
	}
});
	