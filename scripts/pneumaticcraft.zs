#modloaded PneumaticCraft gregapi_post

// --- Created by Jason McRay --- 

// import mods.gregtech.Assembler;
// import mods.gregtech.Extruder;
// import mods.gregtech.AlloySmelter;
// import mods.gregtech.FluidSolidifier;
// import mods.gregtech.Lathe;
// import mods.gregtech.Mixer;
// import mods.gregtech.ChemicalBath;
// import mods.forestry.ThermionicFabricator;
import mods.pneumaticcraft.Assembly;
import mods.pneumaticcraft.Pressure;
import mods.nei.NEI;
import minetweaker.liquid.ILiquidStack;

# Aliases
var BCTank = <BuildCraft|Factory:tankBlock>;
var HHammer = <ore:craftingToolHardHammer>;
// var ItemEmptyCell = <IC2:itemCellEmpty>;
// var ODScanner = <IC2:itemScanner:*>;
var PCB = <PneumaticCraft:printedCircuitBoard>;
var PCBBlueprint = <PneumaticCraft:pcbBlueprint>;
var PCMixer = <PneumaticCraft:plasticMixer>;
var PCRefinery = <PneumaticCraft:refinery>;
var SHammer = <ore:craftingToolSoftHammer>;
var UVBox = <PneumaticCraft:uvLightBox>;
var advancedPCB = <PneumaticCraft:advancedPCB>;
var aerialInterface = <PneumaticCraft:aerialInterface>;
var airCanister = <PneumaticCraft:airCanister:*>;
var airCanisterEmpty = <PneumaticCraft:airCanister:30000>;
// var apple = <minecraft:apple>;
// var arrow = <minecraft:arrow>;
var assemblyController = <PneumaticCraft:assemblyController>;
var assemblyDrill = <PneumaticCraft:assemblyDrill>;
var assemblyIO = <PneumaticCraft:assemblyIOUnit>;
var assemblyLaser = <PneumaticCraft:assemblyLaser>;
var assemblyPlatform = <PneumaticCraft:assemblyPlatform>;
var blazeRod = <minecraft:blaze_rod>;	// <ore:stickBlaze>;
var blockCompressedIron = <PneumaticCraft:compressedIronBlock>;
var blockFurnace = <minecraft:furnace>;
// var bone = <minecraft:bone>;
// var bow = <minecraft:bow>;
var brick = <minecraft:brick>;	// <ore:ingotBrick>;
// var bronzeHullBricked = <gregtech:gt.meta.machine.double:8610>;	// blockmachines:2>;
var bucketDiesel = <PneumaticCraft:dieselBucket>;
var bucketGasoline = <PneumaticCraft:fuelBucket>;
var bucketKerosene = <PneumaticCraft:keroseneBucket>;
var bucketLPG = <PneumaticCraft:lpgBucket>;
var bucketOil = <PneumaticCraft:oilBucket>;
var cablePlatinum = <gregtech:gt.multitileentity:29267>;	// blockmachines:1646>;	# 2x
var cannonBarrel = <PneumaticCraft:cannonBarrel>;
// var carrotGolden = <minecraft:golden_carrot>;
var chargingStation = <PneumaticCraft:chargingStation>;
// var chemicalBlueDye = <liquid:dye.chemical.blue>;
// var circuitElite = <ore:gt:circuit4>;	// circuitElite>;
var clock = <minecraft:clock>;
var compressorAir = <PneumaticCraft:airCompressor>;
var compressorAirAdv = <PneumaticCraft:advancedAirCompressor>;
var compressorElStatic = <PneumaticCraft:electrostaticCompressor>;
var compressorLiquid = <PneumaticCraft:liquidCompressor>;
var compressorLiquidAdv = <PneumaticCraft:advancedLiquidCompressor>;
var computerMonitor = <RotaryCraft:rotarycraft_item_borecraft:5>;	// <gregtech:gt.metaitem.01:32740>;
var dataCircuit = <gregtech:gt.multiitem.technological:30315>;	// metaitem.01:32704>;
var dispenser = <minecraft:dispenser>;
// var drillHeadStainlessSteel = <ore:toolHeadDrillStainlessSteel>;
var droneInterface = <PneumaticCraft:droneInterface>;
var dustRedstone = <minecraft:redstone>;
// var dustSmallIron = <gregtech:gt.meta.dustSmall:260>;	// item.01:1032>;
var elevatorBase = <PneumaticCraft:elevatorBase>;
var elevatorCaller = <PneumaticCraft:elevatorCaller>;
var elevatorFrame = <PneumaticCraft:elevatorFrame>;
var emitterHV = <gregtech:gt.multiitem.technological:11008>;	//12123>;	// metaitem.01:32682>;	# CO2 cutting laser tube
var emitterMV = <gregtech:gt.multiitem.technological:12122>;	// metaitem.01:32681>;
// var emptyCell = <ore:cellEmpty>;
var emptyPCB = <PneumaticCraft:emptyPCB>;
var emptyPCBFresh = <PneumaticCraft:emptyPCB:100>;
// var enderEye = <minecraft:ender_eye>;
// var enderResonator = <EnderIO:itemFrankenSkull:3>;
var controlRuby = <gregtech:gt.multiitem.technological:30402>;
// // var epoxyCoatedPlastic = <InfinityCore:itemMaterial:11>;
var etchingAcid = <liquid:etchacid>;
var etchingAcidBucket = <PneumaticCraft:etchacidBucket>;
// var fermentedSpiderEye = <minecraft:fermented_spider_eye>;
var file = <ore:craftingToolFile>;
val fluxCompressor = <PneumaticCraft:fluxCompressor>;
var gasLift = <PneumaticCraft:gasLift>;
var gearCompressedIron = <PneumaticCraft:compressedIronGear>;
var glass = <ore:blockGlass>;
var glassPane = <ore:paneGlassColorless>;
// var gogglesRevealing = <Thaumcraft:ItemGoggles>;
var goldTurbineBlade = <gregtech:gt.meta.plateCurved:8606>;	// item.02:16086>;	# gilded iron
var gpsTool = <PneumaticCraft:gpsTool>;
// var gunpowder = <minecraft:gunpowder>;
// var heatConductor as IItemStack = null;
// if (loadedMods in "Magneticraft"){
    // heatConductor = <Magneticraft:item.heatcoil_copper:*>;	// <IC2:itemRecipePart:5>;
// } else {
  // if (loadedMods in "IC2"){
      // heatConductor = <IC2:itemRecipePart:5>;
  // } else {
      var heatConductor = <gregtech:gt.meta.plateDouble:290>;
  // }
// }
var heatSink = <PneumaticCraft:heatSink>;
var hopper = <ore:caHopper>;	// <minecraft:hopper>;
var ingotAluminium = <ore:ingotAluminium>;
var ingotCompressedIron = <PneumaticCraft:ingotIronCompressed>;
var integratedCircuit4 = <gregapi:gt.integrated_circuit:4>;
var integratedCircuit6 = <gregapi:gt.integrated_circuit:6>;
var integratedCircuit8 = <gregapi:gt.integrated_circuit:8>;
var ironBars = <minecraft:iron_bars>;
// var itemFoilAnnealedCopper = <gregtech:gt.meta.foil:8640>;	// item.01:29345>;
// var itemIngotCompressedIron = <PneumaticCraft:ingotIronCompressed>;
var itemPlateCompressedIron = <gregtech:gt.meta.plate:8644>;	// <InfinityCore:itemMaterial:2>;
var itemPlateCurvedCompressedIron = <gregtech:gt.meta.plateCurved:8644>;
// var itemPlateRubber = <gregtech:gt.meta.plate:8217>;	// item.01:17880>;
var itemRodCompressedIron = <gregtech:gt.meta.stick:8644>;	// <InfinityCore:itemMaterial:3>;
var itemRodIron = <gregtech:gt.meta.stick:260>;	// item.01:23032>;
var itemRodMeteoricIron = <gregtech:gt.meta.stick:8649>;	// item.01:23340>;
var itemRodWroughtIron = <gregtech:gt.meta.stick:8643>;	// item.01:23304>;
var keroseneLamp = <PneumaticCraft:keroseneLamp>;
var largeSteelFluidCell = <gregtech:gt.multitileentity:32611>;	// metaitem.01:32405>;	# stainless cap-cell
var leatherHard = <harvestcraft:hardenedleatherItem>;
var liquidHopper = <PneumaticCraft:liquidHopper>;
var logisticFrameActiveProvider = <PneumaticCraft:logisticFrameActiveProvider>;
var logisticFrameDefaultStorage = <PneumaticCraft:logisticFrameDefaultStorage>;
var logisticFramePassiveProvider = <PneumaticCraft:logisticFramePassiveProvider>;
var logisticFrameRequest = <PneumaticCraft:logisticFrameRequester>;
var logisticFrameStorage = <PneumaticCraft:logisticFrameStorage>;
// var lubricantCell = <RotaryCraft:	// <gregtech:gt.metaitem.01:30724>;
var manometer = <PneumaticCraft:manometer:*>;
// var moldGear = <ImmersiveEngineering:mold:1>;	// metaitem.01:32303>;
// var moltenCompressedIron = <liquid:molten.ironcompressed>;
// var moltenGlass = <liquid:molten.glass>;
// var moltenRedstone = <liquid:molten.redstone>;
// var netherQuartz = <minecraft:quartz>;
var nitricAcid = <liquid:nitricacid>;
// var obsidian = <minecraft:obsidian>;
var omniHopper = <PneumaticCraft:omnidirectionalHopper>;
var plasticBlack = <PneumaticCraft:plastic>;
var plasticBlue = <PneumaticCraft:plastic:4>;
var plasticBrown = <PneumaticCraft:plastic:3>;
var plasticCyan = <PneumaticCraft:plastic:6>;
var plasticGray = <PneumaticCraft:plastic:8>;
var plasticGreen = <PneumaticCraft:plastic:2>;
var plasticLBlue = <PneumaticCraft:plastic:12>;
var plasticLime = <PneumaticCraft:plastic:10>;
var plasticOrange = <PneumaticCraft:plastic:14>;
var plasticPink = <PneumaticCraft:plastic:9>;
var plasticPurple = <PneumaticCraft:plastic:5>;
var plasticRed = <PneumaticCraft:plastic:1>;
var plasticWhite = <PneumaticCraft:plastic:15>;
var plasticYellow = <PneumaticCraft:plastic:11>;
var plateCompressedIron = <ore:plateIronCompressed>;
var plateCurvedCompressedIron = <ore:plateCurvedIronCompressed>;
// var plateDiamond = <ore:plateGemDiamond>;
var plateGlass = <ore:plateGemGlass>;
var plateCurvedGold = <ore:plateCurvedGold>;
var pneuCylinder = <PneumaticCraft:pneumaticCilinder>;
var pneumaticDoor = <PneumaticCraft:pneumaticDoor>;
val pneumaticDynamo = <PneumaticCraft:pneumaticDynamo>;
var pneumaticHull = <gregtech:gt.meta.machine:8644>;	// <InfinityCore:pneumaticHull>;
var pneumaticHullAdv = <gregtech:gt.meta.machine.quadruple:8644>;	// <InfinityCore:pneumaticHullAdvanced>;
var pressureChamberPart = <PneumaticCraft:pressureChamberWall:*>;
var pressureChamberValve = <PneumaticCraft:pressureChamberValve>;
var pressureChamberWall = <PneumaticCraft:pressureChamberWall>;
var pressureChamberWindow = <PneumaticCraft:pressureChamberWall:6>;
var pressureGauge = <PneumaticCraft:pressureGauge>;
var processingPlant = <PneumaticCraft:thermopneumaticProcessingPlant>;
var programmer = <PneumaticCraft:programmer>;
// var pureNetherQuartz = <appliedenergistics2:item.ItemMultiMaterial:11>;
var purpleLamp = <ReactorCraft:reactorcraft_block_lamp:11>;	// <ProjRed|Illumination:projectred.illumination.lamp:10>;
// var quiteClearGlass = plateGlass;	// <EnderIO:blockFusedQuartz:1>;
var rangeUpgrade = <PneumaticCraft:machineUpgrade:8>;
var redstoneTorch = <minecraft:redstone_torch>;
// var ringCompressedIron = <ore:ringIronCompressed>;
var robotArmHV = <gregtech:gt.multiitem.technological:12083>;	// metaitem.01:32652>;
var rodCompressedIron = <ore:stickIronCompressed>;	// <InfinityCore:itemMaterial:3>;
var rotorBronze = <ore:rotorBronze>;
// var rottenFlesh = <minecraft:rotten_flesh>;
var safetyTubeModule = <PneumaticCraft:safetyTubeModule>;
var screwCompressedIron = <ore:screwIronCompressed>;
var screwdriver = <ore:craftingToolScrewdriver>;
var securityStation = <PneumaticCraft:securityStation>;
// var seismicSensor = <PneumaticCraft:seismicSensor>;
var sensorHV = <gregtech:gt.multiitem.technological:12143>;	// metaitem.01:32692>;
var sensorLV = <gregtech:gt.multiitem.technological:12141>;	// metaitem.01:32690>;
var sensorMV = <gregtech:gt.multiitem.technological:12142>;	// metaitem.01:32691>;
// var shapeGear = <gregtech:gt.multiitem,technological:10023>;	//item.01:32372>;
var shapeSmallPipe = <gregtech:gt.multiitem.technological:10010>;	// metaitem.01:32359>;
// var shardBalanced = <Thaumcraft:ItemShard:6>;
var slabCobble = <ore:slabCobblestone>;
// var smallBronzePipe = <ore:pipeSmallBronze>;
// var spiderEye = <minecraft:spider_eye>;
// var steelHullBricked = <gregtech:gt.meta.machine.double:8630>;	// blockmachines:4>;
// var sugar = <minecraft:sugar>;
var teslaCoil = <RotaryCraft:rotarycraft_item_machine:103>;	// <IC2:blockMachine2:1>;
// var tubeBurst = <PneumaticCraft:plasticElectronTube:8>;
// var tubeChopper = <PneumaticCraft:plasticElectronTube:12>;
// var tubeCreeper = <PneumaticCraft:plasticElectronTube:2>;
// var tubeEnder = <PneumaticCraft:plasticElectronTube:5>;
// var tubeFire = <PneumaticCraft:plasticElectronTube:1>;
// var tubeFlying = <PneumaticCraft:plasticElectronTube:15>;
// var tubeHelium = <PneumaticCraft:plasticElectronTube:11>;
// var tubeLightning = <PneumaticCraft:plasticElectronTube:6>;
// var tubePotion = <PneumaticCraft:plasticElectronTube:9>;
var tubePressure = <PneumaticCraft:pressureTube>;
var tubePressureAdv = <PneumaticCraft:advancedPressureTube>;
// var tubePropulsion = <PneumaticCraft:plasticElectronTube:14>;
// var tubeRain = <PneumaticCraft:plasticElectronTube:4>;
// var tubeRepulsion = <PneumaticCraft:plasticElectronTube:10>;
// var tubeSlime = <PneumaticCraft:plasticElectronTube:3>;
// var tubeSquid = <PneumaticCraft:plasticElectronTube>;
var turbineBlade = <PneumaticCraft:turbineBlade>;
var turbineRotor = <PneumaticCraft:turbineRotor>;
var unassembledPCB = <PneumaticCraft:unassembledPCB>;
var universalSensor = <PneumaticCraft:universalSensor>;
// var upgradeBlock = <PneumaticCraft:machineUpgrade:4>;
// var upgradeCoord = <PneumaticCraft:machineUpgrade:7>;
// var upgradeDispenser = <PneumaticCraft:machineUpgrade:1>;
// var upgradeEntity = <PneumaticCraft:machineUpgrade:3>;
// var upgradeItem = <PneumaticCraft:machineUpgrade:6>;
// var upgradeItemLife = <PneumaticCraft:machineUpgrade:2>;
// var upgradeRange = <PneumaticCraft:machineUpgrade:8>;
// var upgradeSecurity = <PneumaticCraft:machineUpgrade:9>;
// var upgradeSpeed = <PneumaticCraft:machineUpgrade:5>;
// var upgradeThaum = <PneumaticCraft:machineUpgrade:10>;
// var upgradeVolume = <PneumaticCraft:machineUpgrade>;
var vacuumPump = <PneumaticCraft:vacuumPump>;
var vortexTube = <PneumaticCraft:vortexTube>;
var water = <liquid:water>;
// var waterCell = <IC2:itemCellEmpty:1>;
// var watermixedBlueDye = <liquid:dye.watermixed.blue>;
var wrench = <ore:craftingToolWrench>;

// Variable aliases		# not working
// var alloyAdvanced as IOreDictEntry = null;
// var diamondIndustrial as IItemStack = null;
// var compressorElectric as IItemStack = null;
// var generatorPneumatic as IItemStack = null;
// var heatVent as IItemStack = null;

// if (loadedMods in "IC2" ) {
	// alloyAdvanced = <ore:plateAlloyAdvanced>;
	// diamondIndustrial = <IC2:itemPartIndustrialDiamond>;
	// compressorElectric = <PneumaticCraft:electricCompressor>;	# ic2
	// generatorPneumatic = <PneumaticCraft:pneumaticGenerator>;	# ic2
	// heatVent = <IC2:reactorVent:1>;
// } else {
  var diamondIndustrial = <ore:lensDiamond>;	// <ore:craftingIndustrialDiamond>;
  var heatVent = <gregtech:gt.multiitem.technological:12001>;	// <IC2:reactorVent:1>;	# LV pump
// }


// Nerf PC fuel buckets
furnace.setFuel(bucketLPG, 90000);
furnace.setFuel(bucketGasoline, 75000);
furnace.setFuel(bucketKerosene, 55000);
furnace.setFuel(bucketDiesel, 35000);
furnace.setFuel(bucketOil, 7500);

# Special
NEI.overrideName(<PneumaticCraft:emptyPCB:0>, "Empty PCB (Fully Developed)");

# Oredictionary
<ore:oc:materialCircuitBoardPrinted>.add(unassembledPCB);

# Recipe tweaks version 3
recipes.remove(heatSink);
recipes.addShaped(heatSink, [
    [ironBars, ironBars, ironBars],
    [ingotCompressedIron, ingotAluminium, ingotCompressedIron]]);
recipes.remove(tubePressure);
recipes.addShaped(tubePressure * 6, [
    [plateCurvedCompressedIron, wrench, plateCurvedCompressedIron],
    [plateCurvedCompressedIron, null, plateCurvedCompressedIron],
    [plateCurvedCompressedIron, HHammer, plateCurvedCompressedIron]]);
// Extruder.addRecipe(tubePressure, ingotCompressedIron, shapeSmallPipe * 0, 8, 128);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.extruder", true, 128, 8, [10000], [ingotCompressedIron, shapeSmallPipe*0], tubePressure);
recipes.remove(compressorAir);
recipes.addShaped(compressorAir, [
    [plateCompressedIron, heatConductor, plateCompressedIron],
    [plateCompressedIron, pneumaticHull, plateCompressedIron],
    [plateCompressedIron, blockFurnace, plateCompressedIron]]);
recipes.remove(compressorAirAdv);
recipes.addShaped(compressorAirAdv, [
    [plateCompressedIron, plateCompressedIron, plateCompressedIron],
    [plateCompressedIron, pneumaticHullAdv, plateCompressedIron],
    [plateCompressedIron, blockFurnace, plateCompressedIron]]);
recipes.remove(cannonBarrel);
// Assembler.addRecipe(cannonBarrel, itemPlateCompressedIron * 6, safetyTubeModule, null, 200, 16);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 16, 200, [10000], [itemPlateCurvedCompressedIron *6, safetyTubeModule], cannonBarrel);
recipes.remove(pressureChamberWall);
recipes.addShaped(pressureChamberWall * 4, [
    [wrench, plateCompressedIron, plateCompressedIron],
    [HHammer, plateCompressedIron, plateCompressedIron]]);
recipes.remove(pressureChamberWindow);
recipes.addShaped(pressureChamberWindow * 4, [
    [glassPane, plateCompressedIron, glassPane],
    [plateCompressedIron, glassPane, plateCompressedIron],
    [glassPane, plateCompressedIron, glassPane]]);
recipes.remove(pressureChamberValve);
recipes.addShaped(pressureChamberValve * 4, [
    [glassPane, plateCompressedIron, glassPane],
    [plateCompressedIron, tubePressure, plateCompressedIron],
    [glassPane, plateCompressedIron, glassPane]]);
recipes.remove(chargingStation);
recipes.addShaped(chargingStation, [
    [null, null, tubePressure],
    [brick, rotorBronze, brick],
    [slabCobble, slabCobble, slabCobble]]);
recipes.remove(elevatorBase);
// Assembler.addRecipe(elevatorBase * 2, pneuCylinder, plasticGray, null, 200, 120);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 128, 200, [10000], [pneuCylinder, plasticGray], [elevatorBase * 2]);
recipes.remove(elevatorFrame);
// Assembler.addRecipe(elevatorFrame, itemRodCompressedIron * 4, integratedCircuit4 * 0, null, 200, 20);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 32, 200, [10000], [itemRodCompressedIron *4, integratedCircuit4 *0], [elevatorFrame]);
recipes.remove(vacuumPump);
recipes.addShaped(vacuumPump, [
    [manometer, null, manometer],
    [turbineRotor, pneumaticHull, turbineRotor],
    [slabCobble, slabCobble, slabCobble]]);
recipes.remove(pneumaticDoor);
recipes.addShaped(pneumaticDoor *3, [
    [plateCompressedIron, plateCompressedIron, null],
    [plateCompressedIron, plateCompressedIron, HHammer],
    [plateCompressedIron, plateCompressedIron, null]]);
// Assembler.addRecipe(pneumaticDoor, itemPlateCompressedIron * 6, integratedCircuit6 * 0, null, 600, 4);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 8, 600, [1000], [itemPlateCompressedIron, integratedCircuit6], pneumaticDoor);
recipes.remove(assemblyIO);
recipes.addShaped(assemblyIO, [
    [robotArmHV, pneuCylinder, pneuCylinder],
    [null, null, pneuCylinder],
    [plateCompressedIron, PCB, plateCompressedIron]]);
recipes.remove(assemblyDrill);
recipes.addShaped(assemblyDrill, [
	[<gregtech:gt.meta.toolHeadDrill:8300>, pneuCylinder, pneuCylinder],
	[null, null, pneuCylinder],
	[plateCompressedIron, PCB, plateCompressedIron]]);
recipes.remove(assemblyLaser);
recipes.addShaped(assemblyLaser, [
    [emitterHV, pneuCylinder, pneuCylinder],
    [null, null, pneuCylinder],
    [plateCompressedIron, PCB, plateCompressedIron]]);
recipes.remove(assemblyPlatform);
recipes.addShaped(assemblyPlatform, [
    [pneuCylinder, null, pneuCylinder],
    [plasticOrange, plasticOrange, plasticOrange],
    [plateCompressedIron, PCB, plateCompressedIron]]);
recipes.remove(assemblyController);
recipes.addShaped(assemblyController, [
    [null, PCB, null],
    [tubePressure, PCB, PCB],
    [plateCompressedIron, plateCompressedIron, plateCompressedIron]]);

Assembly.removeLaserDrillRecipe(tubePressureAdv);
Assembly.addLaserDrillRecipe(blockCompressedIron, tubePressureAdv * 4);
Assembly.removeLaserRecipe(tubePressureAdv);
Assembly.addLaserRecipe(pressureChamberValve * 10, tubePressureAdv * 4);
Assembly.removeDrillRecipe(pressureChamberValve);
Assembly.addDrillRecipe(blockCompressedIron, pressureChamberValve * 10);

recipes.remove(UVBox);
recipes.addShaped(UVBox, [
    // [purpleLamp, purpleLamp, purpleLamp],
	[null, purpleLamp, null],
    [plateCompressedIron, PCBBlueprint, tubePressure],
    [plateCompressedIron, plateCompressedIron, plateCompressedIron]]);
recipes.remove(universalSensor);
recipes.addShaped(universalSensor, [
    [plasticPurple, sensorLV, plasticPurple],
    [plasticLBlue, plasticPurple, plasticLBlue],
    [plateCompressedIron, dustRedstone, plateCompressedIron]]);
recipes.remove(aerialInterface);
recipes.addShaped(aerialInterface, [
    [pressureChamberPart, <ore:oc:wlanCard>, pressureChamberPart],
    // [sensorMV, enderResonator, emitterMV],
	[sensorMV, controlRuby, emitterMV],
    [pressureChamberPart, pneumaticHullAdv, pressureChamberPart]]);
recipes.remove(compressorElStatic);
// if (loadedMods in "IC2") {
// recipes.addShaped(compressorElStatic, [
    // [ironBars, plasticGray, ironBars],
    // [teslaCoil, turbineRotor, teslaCoil],
    // [ironBars, compressorElectric, ironBars]]);
// } else {
  recipes.addShaped(compressorElStatic, [
    [ironBars, plasticGray, ironBars],
    [teslaCoil, turbineRotor, teslaCoil],
	[ironBars, compressorAir, ironBars]]);
// }
recipes.remove(omniHopper);
recipes.addShaped(omniHopper, [
    [plateCompressedIron, HHammer, plateCompressedIron],
    [plateCurvedCompressedIron, hopper, plateCurvedCompressedIron],
    [null, plateCompressedIron, null]]);
recipes.remove(liquidHopper);
recipes.addShaped(liquidHopper, [
    [plateGlass, SHammer, plateGlass],
    [plateGlass, hopper, plateGlass],
    [null, plateGlass, null]]);
recipes.remove(elevatorCaller);
// Assembler.addRecipe(elevatorCaller, plasticWhite * 4, plasticBrown * 4, moltenRedstone * 144, 200, 120);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 96, 200, [10000], [plasticWhite *4, plasticBrown *4, dustRedstone], elevatorCaller);
recipes.remove(programmer);
recipes.addShaped(programmer, [
    [plasticRed, computerMonitor, plasticRed],
    [turbineRotor, dataCircuit, turbineRotor],
    [ingotCompressedIron, plasticRed, ingotCompressedIron]]);
recipes.remove(securityStation);
recipes.addShaped(securityStation, [
    [plasticGray, computerMonitor, plasticGray],
    [turbineRotor, PCB, turbineRotor],
    [ingotCompressedIron, plasticGray, ingotCompressedIron]]);
recipes.remove(PCMixer);
recipes.addShaped(PCMixer, [
    [glass, glass, glass],
    [glass, rotorBronze, glass],
    [heatConductor, pneumaticHull, heatConductor]]);
recipes.remove(compressorLiquid);
recipes.addShaped(compressorLiquid, [
    [null, largeSteelFluidCell, null],
    [leatherHard, pneumaticHull, leatherHard]]);
recipes.remove(compressorLiquidAdv);
recipes.addShaped(compressorLiquidAdv, [
    [plasticBlue, plateCompressedIron, plasticBlue],
    [heatVent, largeSteelFluidCell, heatVent],
    [heatConductor, pneumaticHullAdv, heatConductor]]);
recipes.remove(vortexTube);
recipes.addShaped(vortexTube, [
    [plateCurvedCompressedIron, tubePressure, plateCurvedCompressedIron],
    [heatVent, pneumaticHull, plateCurvedGold],
    [plateCurvedCompressedIron, plateCompressedIron, plateCurvedCompressedIron]]);
recipes.remove(gasLift);
recipes.addShaped(gasLift, [
    [turbineRotor, BCTank, turbineRotor],
    [airCanister, pneumaticHull, airCanister],
    [plateCompressedIron, plateCompressedIron, plateCompressedIron]]);
recipes.remove(PCRefinery);
recipes.addShaped(PCRefinery, [
    [plateCompressedIron, blazeRod, plateCompressedIron],
    [BCTank, heatConductor, BCTank],
    [plateCompressedIron, pneumaticHull, plateCompressedIron]]);
recipes.remove(processingPlant);
recipes.addShaped(processingPlant, [
    [plateCompressedIron, heatVent, plateCompressedIron],
    [BCTank, heatConductor, BCTank],
    [plateCompressedIron, pneumaticHull, plateCompressedIron]]);
recipes.remove(droneInterface);
recipes.addShaped(droneInterface, [
    [null, rangeUpgrade, null],
    [sensorHV, PCB, null],
    [plateCompressedIron, plateCompressedIron, plateCompressedIron]]);
// if (loadedMods in "IC2"){
	// recipes.remove(generatorPneumatic);
	// recipes.addShaped(generatorPneumatic, [
		// [PCB, dataCircuit, alloyAdvanced],
		// [tubePressureAdv, turbineRotor, cablePlatinum],
		// [PCB, dataCircuit, alloyAdvanced]]);
	// recipes.remove(compressorElectric);
	// recipes.addShaped(compressorElectric, [
		// [alloyAdvanced, dataCircuit, PCB],
		// [cablePlatinum, turbineRotor, tubePressureAdv],
		// [alloyAdvanced, pneumaticHullAdv, PCB]]);
// }
recipes.remove(pneumaticDynamo);
recipes.addShaped(pneumaticDynamo, [
	[plateCompressedIron, tubePressureAdv, plateCompressedIron],[null, ingotCompressedIron, null],[gearCompressedIron, PCB, gearCompressedIron]]);
recipes.remove(fluxCompressor);
recipes.addShaped(fluxCompressor, [
	[PCB, gearCompressedIron, <Forestry:chipsets:3>],[tubePressureAdv, turbineRotor, <ore:ingotElectrum>],
	[PCB, gearCompressedIron, <Forestry:chipsets:3>]]);
recipes.remove(keroseneLamp);
recipes.addShaped(keroseneLamp, [
    [null, plateCompressedIron, null],
    // [quiteClearGlass, null, quiteClearGlass],
	[plateGlass, null, plateGlass],
    // [plateCompressedIron, emptyCell, plateCompressedIron]]);
	[plateCurvedCompressedIron, <minecraft:glass_bottle>, plateCurvedCompressedIron]]);
recipes.remove(gpsTool);
recipes.addShaped(gpsTool, [
    [null, redstoneTorch, null],
    [plasticRed, glassPane, plasticRed],
    [plasticRed, diamondIndustrial, plasticRed]]);
// recipes.remove(upgradeVolume);
// Assembler.addRecipe(upgradeVolume, itemPlateCompressedIron * 4, airCanister, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeVolume, itemPlateCompressedIron * 4, airCanister, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeDispenser);
// Assembler.addRecipe(upgradeDispenser, netherQuartz * 4, dispenser, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeDispenser, pureNetherQuartz * 4, dispenser, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeDispenser, netherQuartz * 4, dispenser, watermixedBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeDispenser, pureNetherQuartz * 4, dispenser, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeItemLife);
// Assembler.addRecipe(upgradeItemLife, apple * 4, clock, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeItemLife, apple * 4, clock, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeEntity);
// Assembler.addRecipe(upgradeEntity, bone * 4, fermentedSpiderEye, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeEntity, bone * 4, fermentedSpiderEye, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeBlock);
// Assembler.addRecipe(upgradeBlock, pressureChamberPart * 4, fermentedSpiderEye, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeBlock, pressureChamberPart * 4, fermentedSpiderEye, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeSpeed);
// Assembler.addRecipe(upgradeSpeed, sugar * 4, lubricantCell, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeSpeed, sugar * 4, lubricantCell, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeItem);
// Assembler.addRecipe(upgradeItem, enderEye * 4, carrotGolden, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeItem, enderEye * 4, carrotGolden, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeCoord);
// Assembler.addRecipe(upgradeCoord, dustRedstone * 4, gpsTool, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeCoord, dustRedstone * 4, gpsTool, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeRange);
// Assembler.addRecipe(upgradeRange, arrow * 4, bow, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeRange, arrow * 4, bow, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeSecurity);
// Assembler.addRecipe(upgradeSecurity, obsidian * 4, safetyTubeModule, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeSecurity, obsidian * 4, safetyTubeModule, watermixedBlueDye * 576, 160, 30);
// recipes.remove(upgradeThaum);
// Assembler.addRecipe(upgradeThaum, gogglesRevealing, shardBalanced, chemicalBlueDye * 576, 160, 30);
// Assembler.addRecipe(upgradeThaum, gogglesRevealing, shardBalanced, watermixedBlueDye * 576, 160, 30);
recipes.remove(pressureGauge);
// Assembler.addRecipe(pressureGauge, itemPlateCompressedIron, clock, moltenRedstone * 144, 200, 16);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", true, 16, 200, [10000], [itemPlateCompressedIron, clock, dustRedstone], pressureGauge);
recipes.remove(turbineRotor);
// Assembler.addRecipe(turbineRotor, turbineBlade * 3, itemRodMeteoricIron, moltenRedstone * 144, 100, 160);
// Assembler.addRecipe(turbineRotor, turbineBlade * 3, itemRodCompressedIron, moltenRedstone * 144, 400, 320);
// Assembler.addRecipe(turbineRotor, turbineBlade * 3, itemRodWroughtIron, moltenRedstone * 144, 800, 640);
// Assembler.addRecipe(turbineRotor, turbineBlade * 3, itemRodIron, moltenRedstone * 144, 1200, 1280);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 16, 100, [10000], [turbineBlade *3, itemRodMeteoricIron, dustRedstone], turbineRotor);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 32, 400, [10000], [turbineBlade *3, itemRodCompressedIron, dustRedstone], turbineRotor);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 48, 800, [10000], [turbineBlade *3, itemRodWroughtIron, dustRedstone], turbineRotor);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 128, 1200, [10000], [turbineBlade *3, itemRodIron, dustRedstone], turbineRotor);
recipes.addShaped(turbineRotor, [[wrench, turbineBlade, screwCompressedIron],[turbineBlade, <ore:stickAnyIron>, turbineBlade],[screwdriver, turbineBlade, HHammer]]);	# welder is a modern-era machine

Pressure.removeRecipe([turbineBlade]);
Pressure.addRecipe([goldTurbineBlade, dustRedstone * 2], 1.5, [turbineBlade], true);

recipes.remove(airCanister);
// Assembler.addRecipe(airCanisterEmpty, itemPlateCompressedIron * 4, tubePressure, moltenRedstone * 288, 200, 20);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 20, 200, [10000], [itemPlateCurvedCompressedIron *4, tubePressure, dustRedstone *2], airCanisterEmpty);
recipes.remove(gearCompressedIron);
recipes.addShaped(gearCompressedIron, [
    [rodCompressedIron, plateCompressedIron, rodCompressedIron],
    [plateCompressedIron, wrench, plateCompressedIron],
    [rodCompressedIron, plateCompressedIron, rodCompressedIron]]);
// FluidSolidifier.addRecipe(gearCompressedIron, moldGear * 0, moltenCompressedIron * 576, 128, 8);
// Extruder.addRecipe(gearCompressedIron, itemIngotCompressedIron * 4, shapeGear * 0, 280, 128);
// AlloySmelter.addRecipe(gearCompressedIron, itemIngotCompressedIron * 8, moldGear * 0, 560, 32);
recipes.addShapeless(gearCompressedIron, [<gregtech:gt.meta.gearGt:8644>]);
recipes.remove(advancedPCB);
// Assembler.addRecipe(advancedPCB, PCB, plasticYellow * 4, moltenRedstone * 576, 32, 64);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", true, 64, 32, [10000], [PCB, plasticYellow *4, dustRedstone *4], advancedPCB);
// recipes.remove(seismicSensor);
// Assembler.addRecipe(seismicSensor, ODScanner, itemPlateRubber * 4, null, 200, 120);
recipes.remove(logisticFrameRequest);
// Assembler.addRecipe(logisticFrameRequest, plasticBlue * 8, integratedCircuit8 * 0, null, 38, 32);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 32, 38, [10000], [plasticBlue *8, integratedCircuit8], logisticFrameRequest);
recipes.remove(logisticFrameStorage);
// Assembler.addRecipe(logisticFrameStorage, plasticYellow * 8, integratedCircuit8 * 0, null, 38, 32);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 32, 38, [10000], [plasticYellow *8, integratedCircuit8], logisticFrameStorage);
recipes.remove(logisticFramePassiveProvider);
// Assembler.addRecipe(logisticFramePassiveProvider, plasticRed * 8, integratedCircuit8 * 0, null, 38, 32);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 32, 38, [10000], [plasticRed *8, integratedCircuit8], logisticFramePassiveProvider);
recipes.remove(logisticFrameActiveProvider);
// Assembler.addRecipe(logisticFrameActiveProvider, plasticPurple * 8, integratedCircuit8 * 0, null, 38, 32);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 32, 38, [10000], [plasticPurple *8, integratedCircuit8], logisticFrameActiveProvider);
recipes.remove(logisticFrameDefaultStorage);
// Assembler.addRecipe(logisticFrameDefaultStorage, plasticLime * 8, integratedCircuit8 * 0, null, 38, 32);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 32, 38, [10000], [plasticLime *8, integratedCircuit8], logisticFrameDefaultStorage);

Pressure.removeRecipe([etchingAcidBucket]);
// Mixer.addRecipe(ItemEmptyCell * 4, etchingAcid * 5000, [waterCell * 4], nitricAcid * 1000, 300, 20);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", false, 16, 300, [10000], [null] as IItemStack[], [nitricAcid *1000, water *4000] as ILiquidStack[], [etchingAcid *5000] as ILiquidStack[], [null] as IItemStack[]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", false, 16, 250, [10000], [null] as IItemStack[], [nitricAcid *1000, <liquid:ic2distilledwater> *4000] as ILiquidStack[], [etchingAcid *5000] as ILiquidStack[], [null] as IItemStack[]);
/*
# PCB Etching
var meta = [99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,
84,83,82,81,80,
79,78,77,76,75,74,73,72,71,70,
69,68,67,66,65,64,63,62,61,60,
59,58,57,56,55,54,53,52,51,50,
49,48,47,46,45,44,43,42,41,40,
39,38,37,36,35,34,33,32,31,30,
29,28,27,26,25,24,23,22,21,20,
19,18,17,16,15,14,13,12,11,10,
9,8,7,6,5,4,3,2,1,0] as long[];
for i in meta {	# NCD loop (as long cast invalid)
    var PCBItem = emptyPCB.definition.makeStack(i as int);
    var etchChance = ((100-i)*100);	// 85-i
    // ChemicalBath.addRecipe([unassembledPCB], PCBItem, etchingAcid * 100, [etchChance], 1200, 8);
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 8, 1200, [etchChance], [PCBItem], etchingAcid *100, null, [unassembledPCB]);
}
// <PneumaticCraft:emptyPCB:*>.addTooltip("Etch success lowered by "+format.white("15% ")+format.gray("in Chemical Bath"));
*/

mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [100], [<PneumaticCraft:emptyPCB:99>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [210], [<PneumaticCraft:emptyPCB:98>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [320], [<PneumaticCraft:emptyPCB:97>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [430], [<PneumaticCraft:emptyPCB:96>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [540], [<PneumaticCraft:emptyPCB:95>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [650], [<PneumaticCraft:emptyPCB:94>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [760], [<PneumaticCraft:emptyPCB:93>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [870], [<PneumaticCraft:emptyPCB:92>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [980], [<PneumaticCraft:emptyPCB:91>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1090], [<PneumaticCraft:emptyPCB:90>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1200], [<PneumaticCraft:emptyPCB:89>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1310], [<PneumaticCraft:emptyPCB:88>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1420], [<PneumaticCraft:emptyPCB:87>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1530], [<PneumaticCraft:emptyPCB:86>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1640], [<PneumaticCraft:emptyPCB:85>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1750], [<PneumaticCraft:emptyPCB:84>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1860], [<PneumaticCraft:emptyPCB:83>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [1970], [<PneumaticCraft:emptyPCB:82>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2080], [<PneumaticCraft:emptyPCB:81>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2190], [<PneumaticCraft:emptyPCB:80>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2300], [<PneumaticCraft:emptyPCB:79>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2410], [<PneumaticCraft:emptyPCB:78>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2520], [<PneumaticCraft:emptyPCB:77>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2630], [<PneumaticCraft:emptyPCB:76>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2740], [<PneumaticCraft:emptyPCB:75>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2850], [<PneumaticCraft:emptyPCB:74>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [2960], [<PneumaticCraft:emptyPCB:73>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3070], [<PneumaticCraft:emptyPCB:72>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3180], [<PneumaticCraft:emptyPCB:71>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3290], [<PneumaticCraft:emptyPCB:70>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3400], [<PneumaticCraft:emptyPCB:69>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3510], [<PneumaticCraft:emptyPCB:68>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3620], [<PneumaticCraft:emptyPCB:67>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3730], [<PneumaticCraft:emptyPCB:66>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3840], [<PneumaticCraft:emptyPCB:65>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [3950], [<PneumaticCraft:emptyPCB:64>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4060], [<PneumaticCraft:emptyPCB:63>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4170], [<PneumaticCraft:emptyPCB:62>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4280], [<PneumaticCraft:emptyPCB:61>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4390], [<PneumaticCraft:emptyPCB:60>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4500], [<PneumaticCraft:emptyPCB:59>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4610], [<PneumaticCraft:emptyPCB:58>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4720], [<PneumaticCraft:emptyPCB:57>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4830], [<PneumaticCraft:emptyPCB:56>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [4940], [<PneumaticCraft:emptyPCB:55>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5050], [<PneumaticCraft:emptyPCB:54>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5160], [<PneumaticCraft:emptyPCB:53>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5270], [<PneumaticCraft:emptyPCB:52>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5380], [<PneumaticCraft:emptyPCB:51>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5490], [<PneumaticCraft:emptyPCB:50>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5600], [<PneumaticCraft:emptyPCB:49>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5710], [<PneumaticCraft:emptyPCB:48>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5820], [<PneumaticCraft:emptyPCB:47>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [5930], [<PneumaticCraft:emptyPCB:46>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [6040], [<PneumaticCraft:emptyPCB:45>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [6150], [<PneumaticCraft:emptyPCB:44>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [6260], [<PneumaticCraft:emptyPCB:43>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [6370], [<PneumaticCraft:emptyPCB:42>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [6480], [<PneumaticCraft:emptyPCB:41>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [6590], [<PneumaticCraft:emptyPCB:40>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [6800], [<PneumaticCraft:emptyPCB:39>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [6910], [<PneumaticCraft:emptyPCB:38>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7020], [<PneumaticCraft:emptyPCB:37>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7130], [<PneumaticCraft:emptyPCB:36>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7240], [<PneumaticCraft:emptyPCB:35>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7350], [<PneumaticCraft:emptyPCB:34>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7460], [<PneumaticCraft:emptyPCB:33>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7570], [<PneumaticCraft:emptyPCB:32>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7680], [<PneumaticCraft:emptyPCB:31>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7790], [<PneumaticCraft:emptyPCB:30>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [7900], [<PneumaticCraft:emptyPCB:29>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8010], [<PneumaticCraft:emptyPCB:28>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8120], [<PneumaticCraft:emptyPCB:27>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8230], [<PneumaticCraft:emptyPCB:26>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8340], [<PneumaticCraft:emptyPCB:25>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8450], [<PneumaticCraft:emptyPCB:24>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8560], [<PneumaticCraft:emptyPCB:23>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8670], [<PneumaticCraft:emptyPCB:22>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8780], [<PneumaticCraft:emptyPCB:21>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [8890], [<PneumaticCraft:emptyPCB:20>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9000], [<PneumaticCraft:emptyPCB:19>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9110], [<PneumaticCraft:emptyPCB:18>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9220], [<PneumaticCraft:emptyPCB:17>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9330], [<PneumaticCraft:emptyPCB:16>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9440], [<PneumaticCraft:emptyPCB:15>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9550], [<PneumaticCraft:emptyPCB:14>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9660], [<PneumaticCraft:emptyPCB:13>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9770], [<PneumaticCraft:emptyPCB:12>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9880], [<PneumaticCraft:emptyPCB:11>], etchingAcid *100, null, [unassembledPCB]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [9990], [<PneumaticCraft:emptyPCB:10>], etchingAcid *100, null, [unassembledPCB]);
for i in [9,8,7,6,5,4,3,2,1,0] as int[] {
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.bath", true, 0, 1200, [10000], [emptyPCB.definition.makeStack(i)], etchingAcid *100, null, [unassembledPCB]);
}
// Pressure.removeRecipe([emptyPCBFresh]);

/*
# GT Integration
ThermionicFabricator.removeCast(tubeSquid);
ThermionicFabricator.removeCast(tubeFire);
ThermionicFabricator.removeCast(tubeCreeper);
ThermionicFabricator.removeCast(tubeSlime);
ThermionicFabricator.removeCast(tubeRain);
ThermionicFabricator.removeCast(tubeEnder);
ThermionicFabricator.removeCast(tubeLightning);
ThermionicFabricator.removeCast(tubeBurst);
ThermionicFabricator.removeCast(tubePotion);
ThermionicFabricator.removeCast(tubeRepulsion);
ThermionicFabricator.removeCast(tubeHelium);
ThermionicFabricator.removeCast(tubeChopper);
ThermionicFabricator.removeCast(tubePropulsion);
ThermionicFabricator.removeCast(tubeFlying);
Assembler.addRecipe(tubeSquid, dustRedstone * 2, plasticBlack * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeFire, dustRedstone * 2, plasticRed * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeCreeper, dustRedstone * 2, plasticGreen * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeSlime, dustRedstone * 2, plasticBrown * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeRain, dustRedstone * 2, plasticBlue * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeEnder, dustRedstone * 2, plasticPurple * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeLightning, dustRedstone * 2, plasticCyan * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeBurst, dustRedstone * 2, plasticGray * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubePotion, dustRedstone * 2, plasticPink * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeRepulsion, dustRedstone * 2, plasticLime * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeHelium, dustRedstone * 2, plasticYellow * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeChopper, dustRedstone * 2, plasticLBlue * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubePropulsion, dustRedstone * 2, plasticOrange * 5, moltenGlass * 72, 64, 32);
Assembler.addRecipe(tubeFlying, dustRedstone * 2, plasticWhite * 5, moltenGlass * 72, 64, 32);
*/
var bullGt = <gregtech:gt.meta.bulletGtSmall:8644>;
recipes.addShapeless(bullGt *9, [<PneumaticCraft:gunAmmo>]);
recipes.addShapeless(<PneumaticCraft:gunAmmo>, [bullGt, bullGt, bullGt,  bullGt,bullGt,bullGt,  bullGt,bullGt,bullGt]);
