#modloaded GalaxySpace gregapi_post libVulpes

// by CanisArtorus

import minetweaker.item.IItemStack;

<ore:sapphire>.mirror(<ore:gemAnySapphire>);
<ore:oreDiamond>.addAll(<ore:oreKimberliteDiamond>);
<ore:oreRedstone>.addAll(<ore:oreKomatiiteRedstone>);
<ore:oreLapis>.addAll(<ore:oreDioriteLapis>);	//?
<ore:oreGold>.addAll(<ore:oreAndesiteGold>);
<ore:oreCheese>.addAll(<ore:oreMoonCheese>);
<ore:oreDesh>.addAll(<ore:oreMarsDesh>);

<ore:stoneMoonTurf>.add(<GalacticraftCore:tile.moonBlock:3>);
<ore:stoneSpaceStone>.add(<GalaxySpace:mercuryblocks:0>);
<ore:stoneSpaceStone>.add(<GalaxySpace:mercuryblocks:1>);
<ore:stoneMarsStone>.add(<GalaxySpace:mercuryblocks:2>);
<ore:stoneMoonStone>.add(<GalaxySpace:venusblocks:0>);
<ore:stoneMarsStone>.add(<GalaxySpace:venusblocks:1>);
<ore:oreGneiss>.add(<GalaxySpace:venusblocks:4>);
<ore:stoneMoonTurf>.add(<GalaxySpace:ceresblocks:0>);
<ore:stoneSpaceStone>.add(<GalaxySpace:ceresblocks:1>);
<ore:stoneSpaceStone>.add(<GalaxySpace:plutoblocks:5>);
<ore:stoneSpaceStone>.add(<GalaxySpace:ioblocks:0>);
<ore:stoneSpaceStone>.add(<GalaxySpace:ioblocks:2>);
<ore:stoneSpaceStone>.add(<GalaxySpace:europablocks:1>);
<ore:blockDustVolcanicAsh>.add(<GalaxySpace:ioblocks:1>);
<ore:stoneMarsSand>.add(<GalaxySpace:ganymedeblocks:0>);
<ore:stoneMarsStone>.add(<GalaxySpace:ganymedeblocks:1>);
<ore:stoneSpaceStone>.add(<GalaxySpace:callistoblocks:0>);
<ore:stoneSpaceStone>.add(<GalaxySpace:callistoblocks:1>);
<ore:stoneSpaceStone>.add(<GalaxySpace:enceladusblocks:1>);
<ore:stoneSpaceStone>.add(<GalaxySpace:titanblocks:2>);
<ore:blockDustMethaneIce>.add(<GalaxySpace:titanblocks:0>);
<ore:blockDustMethaneIce>.add(<GalaxySpace:titanblocks:1>);
<ore:stoneMoonTurf>.add(<GalaxySpace:mirandablocks:0>);
<ore:stoneMoonTurf>.add(<GalaxySpace:mirandablocks:1>);
<ore:stoneMoonStone>.add(<GalaxySpace:mirandablocks:1>);
<ore:blockDustMethaneIce>.add(<GalaxySpace:tritonblocks:0>);
<ore:blockDustMethaneIce>.add(<GalaxySpace:tritonblocks:1>);
<ore:blockDustMethaneIce>.add(<GalaxySpace:tritonblocks:2>);
<ore:stoneMoonStone>.add(<GalaxySpace:tritonblocks:3>);

var ridd = format.red("This is disabled. Find something in Advanced Rocketry instead.");

for goodbye in [<GalacticraftCore:tile.landingPad:0>, <GalacticraftCore:tile.oxygenCompressor:4>, <GalacticraftCore:tile.distributor>, <GalacticraftCore:tile.sealer>, <GalacticraftCore:tile.oxygenDetector>, <GalacticraftCore:tile.refinery>, <GalacticraftCore:tile.cargo:*>, <GalacticraftCore:tile.rocketWorkbench>, <GalacticraftCore:tile.airLockFrame:*>, <GalacticraftCore:tile.machine:12>, <GalacticraftCore:tile.machine2:*>, <GalacticraftCore:tile.machineTiered:*>, <GalacticraftCore:tile.spinThruster>, <GalacticraftCore:item.spaceship:*>, <GalacticraftCore:item.oxygenMask>, <GalacticraftCore:item.oxygenGear>, <GalacticraftCore:item.oxygenTankLightFull:*>, <GalacticraftCore:item.oxygenTankMedFull:*>, <GalacticraftCore:item.oxygenTankHeavyFull:*>, <GalacticraftCore:item.steel_pickaxe>, <GalacticraftCore:item.steel_axe>, <GalacticraftCore:item.steel_hoe>, <GalacticraftCore:item.steel_shovel>, <GalacticraftCore:item.steel_sword>, <GalacticraftCore:item.steel_boots>, <GalacticraftCore:item.steel_leggings>, <GalacticraftCore:item.steel_chestplate>, <GalacticraftCore:item.steel_helmet>, <GalacticraftCore:item.airVent>, <GalacticraftCore:item.airFan>, <GalacticraftCore:item.engine:*>, <GalacticraftCore:item.noseCone>, <GalacticraftCore:item.rocketFins>, <GalacticraftCore:item.basicItem:13>, <GalacticraftCore:item.basicItem:14>, <GalacticraftCore:item.parachute:*>, <GalacticraftMars:tile.marsMachine:8>, <GalacticraftMars:tile.marsMachineT2:*>, <GalacticraftMars:tile.hydrogenPipe>, <GalacticraftMars:item.itemTier3Rocket:*>, <GalacticraftMars:item.thermalPadding:*>, <GalacticraftMars:item.itemBasicAsteroids:1>, <GalacticraftMars:item.itemBasicAsteroids:2>, <GalacticraftMars:item.itemBasicAsteroids:7>, <GalacticraftMars:item.atmosphericValve>, <GalacticraftMars:item.heavyNoseCone>,<GalacticraftMars:item.titanium_axe>, <GalacticraftMars:item.titanium_pickaxe>, <GalacticraftMars:item.titanium_shovel>, <GalacticraftMars:item.titanium_hoe>, <GalacticraftMars:item.titanium_sword>, <GalacticraftMars:item.deshPick>, <GalacticraftMars:item.deshPickSlime>, <GalacticraftMars:item.deshAxe>, <GalacticraftMars:item.deshHoe>, <GalacticraftMars:item.deshSpade>, <GalacticraftMars:item.deshSword>, <GalacticraftMars:item.spaceshipTier2:*>, <GalaxySpace:solarwindpanel>, <GalaxySpace:assemblymachine>, <GalaxySpace:storagemoduleT3>, <GalaxySpace:oxstoragemoduleT2>, <GalaxySpace:advFuelLoader>, <GalaxySpace:rocketAssembly>, <GalaxySpace:recycler>, <GalaxySpace:liquidextractor>, <GalaxySpace:advlandingpad>, <GalaxySpace:gravitationmoduleon>, <GalaxySpace:liquidseparator>,<GalaxySpace:radiationstabiliser>,<GalaxySpace:modificationtable>, <GalaxySpace:item.BasicItems:0>, <GalaxySpace:item.BasicItems:1>, <GalaxySpace:item.BasicItems:2>, <GalaxySpace:item.BasicItems:3>, <GalaxySpace:item.BasicItems:7>, <GalaxySpace:item.BasicItems:11>, <GalaxySpace:item.BasicItems:12>, <GalaxySpace:item.Tier4Rocket:*>, <GalaxySpace:item.Tier5Rocket:*>, <GalaxySpace:item.Tier6Rocket:*>, <GalaxySpace:item.ThermalClothT2>, <GalaxySpace:item.cobalt_sword>, <GalaxySpace:item.cobalt_pickaxe>, <GalaxySpace:item.cobalt_axe>, <GalaxySpace:item.cobalt_shovel>, <GalaxySpace:item.cobalt_hoe>, <GalaxySpace:item.Modules:*>, <GalaxySpace:item.RocketParts:*>, <GalaxySpace:item.oxygentank_t4:*>,<GalaxySpace:item.oxygentank_t5:*>,<GalaxySpace:item.oxygentank_t6:*>, <GalaxySpace:item.oxygentank_epp_t1:*>, <GalaxySpace:item.spacesuit_helmet>, <GalaxySpace:item.spacesuit_plate>, <GalaxySpace:item.spacesuit_leg>, <GalaxySpace:item.spacesuit_boots>, <GalaxySpace:item.ThermalPaddingT2:*>, <GalaxySpace:portablenuclearreactor>] as IItemStack[] {
  recipes.remove(goodbye);
  goodbye.addTooltip(ridd);
}

var hearingAid	=	<GalacticraftCore:item.basicItem:19>;
var dirtyIce	=	[<GalaxySpace:surfaceice>, <GalaxySpace:plutoblocks:0>, <GalaxySpace:plutoblocks:1>, <GalaxySpace:plutoblocks:2>, <GalaxySpace:plutoblocks:3>, <GalaxySpace:plutoblocks:4>, <GalaxySpace:europablocks:0>, <GalaxySpace:europablocks:2>, <GalaxySpace:enceladusblocks:0>] as IItemStack[];
var E_Jet	=	<GalaxySpace:item.JetPack:100>;

var Wrench 	= <ore:craftingToolWrench>;
var HHam	= <ore:craftingToolHardHammer>;
var Chisel	= <ore:craftingToolChisel>;
var Screw	= <ore:craftingToolScrewdriver>;
var Mallet	= <ore:craftingToolSoftHammer>;
var Saw		= <ore:craftingToolSaw>;
var WirCut	= <ore:craftingToolWireCutter>;

var alu		= <ore:plateAluminium>;
var anySteel= <ore:plateAnyIronSteel>;
var iron	= <ore:plateAnyIron>;
var Sn		= <ore:plateTin>;
var glass	= <ore:blockGlass>;

var gcChip1 =	<advancedRocketry:circuitIC:0>;
var gcChip2 =	<advancedRocketry:circuitIC:2>;

var HDP1	=	<GalacticraftCore:item.heavyPlating:0>;
var HDP2	=	<GalacticraftMars:item.null:3>;
var HDP3	=	<GalacticraftMars:item.itemBasicAsteroids:0>;
var HDP4	=	<GalaxySpace:item.HeavyDutyPlate:0>;
var tinCan	=	<GalacticraftCore:item.canister:0>;

recipes.remove(hearingAid);
recipes.addShaped(hearingAid, [
[null, alu, null],
[iron, <minecraft:repeater>, iron],
[<ore:wireGt01RedAlloy>, gcChip1, <ore:wireGt01RedAlloy>]]);

for titan in <ore:plateTitanium>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 48, 512, [10000], [HDP3, titan], HDP4);
}

var grit	= <gregtech:gt.meta.dust:8102>;	// sluice sand
var iceCubes= <gregtech:gt.meta.gem:9802>;
var muck 	= <gregtech:gt.multiitem.food:12300>;	// mud ball

// icerock processing
for thing in dirtyIce {
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.crusher", false, 16, 20, [10000, 2500, 5000], [thing], [iceCubes, grit*3, muck*2]);
}

/** Decoratives
<GalacticraftCore:tile.gcBlockCore>	3&4 tin decor
<GalacticraftCore:tile.enclosed:*>
<GalacticraftCore:tile.dish>;	// no recipe?
<GalacticraftCore:tile.glowstoneTorch>;	//good
<GalacticraftCore:tile.viewScreen>;
<GalacticraftCore:tile.telemetry>;
<GalacticraftCore:tile.arclamp>;	//good
<GalacticraftCore:tile.wallGC:*>;
<GalacticraftCore:slabGCHalf:*>;
<GalacticraftCore:item.sensorLens>;	//meh
<GalacticraftCore:item.sensorGlasses>;	//meh
<GalacticraftCore:item.steelPole>;	//meh
<GalacticraftCore:item.canvas>;	//good
var personalFan	=	<GalacticraftCore:item.basicItem:20>;
<GalacticraftCore:item.standardWrench>;	//good
<GalacticraftCore:tile.cheeseBlock>;	//milky good
<GalacticraftCore:item.cheeseCurd>;
<GalacticraftCore:item.flag>;	//good
<GalacticraftMars:tile.walkway>;	//fine
var telepad	=	<GalacticraftMars:tile.telepadShort>;	//fine
var grapnel =	<GalacticraftMars:item.grapple>;	//fine
var slimepack=	<GalacticraftMars:item.null:4>;	//fine
<GalaxySpace:fluidtank>;	//good
<GalaxySpace:enceladuscrystal>;
var electroUp	=	<GalaxySpace:item.BasicItems:3>;
var areaUp	=	<GalaxySpace:item.BasicItems:14>;
var stableUp	=	<GalaxySpace:item.BasicItems:15>;
var soulRelic	=	<GalaxySpace:item.BasicItems:17>;
var manual	=	<GalaxySpace:item.BasicItems:18>;
var SHDC_120	=	<GalaxySpace:item.compressedPlates:4>;

*/

// Greenhouse stuff
var leafBreath=	<GalacticraftCore:tile.oxygenCollector>;
//<GalacticraftCore:tile.oxygenCompressor:0>;	//fine
//<GalacticraftCore:tile.oxygenPipe>;	//fine
var concNozzle=	<GalacticraftCore:item.oxygenConcentrator>;
//<GalacticraftMars:tile.walkwayOxygenPipe>;	//good
// var terraformer=	<GalacticraftMars:tile.marsMachine:0>;	//meh
// var cryoPod=	<GalacticraftMars:tile.marsMachine:4>;	//fine
// var gaiaform=	<GalaxySpace:convertersurface>;	//meh
var farmPower=	<GalaxySpace:hydroponicbase>;
var farmUnit=	<GalaxySpace:hydroponicfarm>;
var airVent =	<gregtech:gt.multiitem.technological:1022>;

recipes.remove(leafBreath);
recipes.addShaped(leafBreath, [
[anySteel, anySteel, anySteel],
[<gregtech:gt.meta.rotor:8636>, tinCan, airVent],	//stainless
[alu, concNozzle, alu]]);
recipes.remove(concNozzle);
recipes.addShaped(concNozzle, [
[anySteel, Sn, anySteel],
[Sn, tinCan, Sn],
[anySteel, airVent, anySteel]]);

recipes.remove(farmPower);	//tank, concNozzle, personalFan, anySteel, hvywire, machineFrames

recipes.remove(farmUnit);	//dirt, glass, hvywire, machineFrames


// Generators
// <GalacticraftMars:tile.walkwayWire>;
var solar = 	<GalacticraftCore:tile.solar:0>;
var advSolar =	<GalacticraftCore:tile.solar:4>;
var coal_gen=	<GalacticraftCore:tile.machine:0>;
// var gcAlWire=	<GalacticraftCore:tile.aluminumWire:0>;
// var gcAlWireHvy=<GalacticraftCore:tile.aluminumWire:1>;
// var cuVessel=	<GalacticraftCore:item.canister:1>;
var solarPanel=	<GalacticraftCore:item.basicItem:0>;
var solarArray=	<GalacticraftCore:item.basicItem:1>;
var photoVolt=	<GalacticraftCore:item.basicItem:12>;
var gcReBat1=	<GalacticraftCore:item.battery:100>;	//good
// <GalacticraftMars:tile.beamReflector>;	//fine
// <GalacticraftMars:tile.beamReciever>;	//fine
var beamEye=	<GalacticraftMars:item.itemBasicAsteroids:8>;	//fine
var fluidCore=	<GalacticraftMars:item.null:6>;
// var fuel_gen=	<GalaxySpace:fuelgenerator>;	//fine
var hybridSolar=	<GalaxySpace:solarPanel>;
var windMill=	<GalaxySpace:windTurbine>;
var gcReBat2=	<GalaxySpace:item.AdvancedBattery:100>;	//good pattern
var gcReBat3=	<GalaxySpace:item.ModernBattery:100>;
var gcReBat4=	<GalaxySpace:item.ExtraBattery:100>;
var gcReBat5=	<GalaxySpace:item.UltraBattery:100>;

recipes.remove(solar);
recipes.remove(advSolar);
recipes.remove(coal_gen);
// recipes.addShaped(solar, [solarArray, gcChip1, wire]);
// recipes.addShaped(advSolar, [solarArray, gcChip2, hvywire]);
recipes.addShaped(coal_gen, [
[Chisel, <ore:plateCopper>, HHam],
[<ore:plateAnyIron>, <minecraft:furnace>, <ore:plateAnyIron>],
[<ore:inogtAnyIron>, <ore:wireGt01Copper>, <ore:ingotAnyIron>]]);
recipes.remove(solarPanel);
recipes.addShaped(solarPanel*2, [
[glass, glass, glass],
[photoVolt, photoVolt, photoVolt],
[Mallet, null, <ore:wireGt01Copper>]]);
recipes.remove(solarArray);
recipes.addShaped(solarArray, [
[solarPanel, solarPanel, solarPanel],
[<ore:wireGt02Copper>, Mallet, <ore:wireGt02Copper>],
[solarPanel, solarPanel, solarPanel]]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", false, 32, 80, [10000], [<minecraft:dye:4>, <gregtech:gt.meta.plate:140>, <gregtech:gt.meta.dustSmall:8333>], photoVolt*9);

recipes.remove(hybridSolar);	//advSolar, solarArray, gold, advFrame

recipes.remove(fluidCore);	//fan, slime, gcChip2

recipes.remove(windMill);

recipes.remove(gcReBat4);
recipes.addShaped(gcReBat4, [
[gcReBat3, HDP3, gcReBat3],
[HDP3, <ore:dustManganese>, HDP3],
[HDP3, <minecraft:redstone>, HDP3]]);
recipes.remove(gcReBat5);
recipes.addShaped(gcReBat5, [
[gcReBat4, HDP4, gcReBat4],
[HDP4, <ore:dustLithium>, HDP4],
[HDP4, <minecraft:redstone>, HDP4]]);

var compCyl	=	<gregtech:gt.multitileentity:32056>;	// Stainless Barometer Cylinder
var zapper	=	<gregtech:gt.multitileentity:20502>;	// MV discharge processor
var nozzle	=	<gregtech:gt.multitileentity:18040>;	// annealed copper coil

recipes.remove(E_Jet);
recipes.addShaped(E_Jet, [
[WirCut, gcReBat2, Wrench],
[compCyl, zapper, compCyl],
[nozzle, <GalacticraftMars:item.deshChestplate>, nozzle]]);


// Buggy stuff
// var garage =	<GalacticraftCore:tile.landingPad:1>;	//meh
var fuelPump=	<GalacticraftCore:tile.fuelLoader>;
// var jerryCanFuel=	<GalacticraftCore:item.fuelCanisterPartial:1>;
var jerryCanEmpty=	<GalacticraftCore:item.oilCanisterPartial:1001>;
var tires=	<GalacticraftCore:item.buggymat:0>;
var cabin=	<GalacticraftCore:item.buggymat:1>;
var trunk=	<GalacticraftCore:item.buggymat:2>;
// var buggy=	<GalacticraftCore:item.buggy>;	// meta=cargo
var axle=	<gregtech:gt.multitileentity:24811>;	//bronze medium 4-torque
var steelBars=	<gregtech:gt.block.bars.steel>;
var gearbox=	<gregtech:gt.multitileentity:24818>;	//bronze transformer gears 24829>;	//steel custom gearbox
var rub =	<ore:plateRubber>;
var internalCombustion	= <gregtech:gt.multitileentity:9149>;	//<ore:steamTurbine>;	//awaiting Gt	as of v6.12.00 - invar diesel engine 64 RU/t
var BronzeBox =	<gregtech:gt.multitileentity:509>;	//reinforced wood chest
var tap 	= <gregtech:gt.multitileentity:32730>;	//stainless

var nest=	<GalacticraftMars:tile.minerBase>;
var jaws=	<GalacticraftMars:item.itemAstroMiner>;
var orion=	<GalacticraftMars:item.orionDrive>;	//fine

recipes.remove(fuelPump);
recipes.addShaped(fuelPump, [
[anySteel, anySteel, anySteel],
[tap, tinCan, anySteel],
//[jerryCanEmpty, gcChip1, Wrench]]);
[jerryCanEmpty, <ore:gt:circuit1>, Wrench]]);

recipes.remove(tires);
recipes.remove(cabin);
recipes.remove(trunk);
cabin.displayName = "Buggy Frame";
recipes.addShaped(<GalacticraftCore:item.buggy:0>, [
[null, null, HHam],
[null, cabin, internalCombustion],
[tires, Wrench, tires]]);
recipes.addShaped(<GalacticraftCore:item.buggy:1>, [
[null, null, HHam],
[trunk, cabin, internalCombustion],
[tires, Wrench, tires]]);
recipes.addShaped(<GalacticraftCore:item.buggy:2>, [
[trunk, null, HHam],
[trunk, cabin, internalCombustion],
[tires, Wrench, tires]]);
recipes.addShaped(<GalacticraftCore:item.buggy:3>, [
[trunk, trunk, HHam],
[trunk, cabin, internalCombustion],
[tires, Wrench, tires]]);
recipes.addShaped(cabin, [
[Saw,steelBars,HHam],
[steelBars,<advancedRocketry:seat>,<minecraft:lever>],
[gearbox,Wrench,jerryCanEmpty]]);
recipes.addShaped(tires*2, [
[null, rub, axle],
[rub, <gregtech:gt.meta.minecartWheels:8630>, rub],
[Mallet, rub, null]]);
recipes.addShapeless(trunk, [BronzeBox, <ore:screwBronze>, Screw]);

recipes.remove(nest);
recipes.addShapeless(nest*4, [<ore:casingMachineDesh>, beamEye, gcReBat5, <ore:craftingChest>, beamEye, Screw]);
// recipes.addShaped(jaws, [	//orion, beamEye, HDP2	// use precision assembler machine
