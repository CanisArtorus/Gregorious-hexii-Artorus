#modloaded SGCraft gregapi_post

// --- Created by Jason McRay --- 

# Gregs SGCraft
// import mods.gregtech.ChemicalReactor;
// import mods.gregtech.Assembler;
// import mods.ic2.Compressor;
import mods.nei.NEI;
import minetweaker.item.IItemStack;
// import minetweaker.block.IBlock;

# Aliases
var blockNaqAlloy = <SGCraft:naquadahBlock>;
var blockSGChevron = <SGCraft:stargateRing:1>;
var button = <minecraft:stone_button>;
var capacitorLarge = <SGCraft:ic2Capacitor>;
var casingEV = <gregtech:gt.meta.machine:240>;	// blockcasings:4>;	# = Chrome
// var casingMachineLuV = <gregtech:gt.meta.machine:770>;	// blockcasings:6>;	# = iridium
var circuitMaster = <ore:gt:circuit5>;	// <ore:circuitMaster>;
var conveyorEV = <gregtech:gt.multiitem.technological:12044>;	// metaitem.01:32633>;
var crystalSGController = <SGCraft:sgControllerCrystal>;
var crystalSGCore = <SGCraft:sgCoreCrystal>;
var dustCarbon = <gregtech:gt.meta.dust:60>;	// item.01:2010>;
// var dustIron = 	// <IC2:itemDust:5>;
var dustNaqAlloy = <gregtech:gt.meta.dust:8684>;	// item.01:2325>;
var dustNaquadah = <gregtech:gt.meta.dust:1740>;	// item.01:2324>;
var emitterEV = <gregtech:gt.multiitem.technological:12124>;	// metaitem.01:32683>;
var enderEye = <minecraft:ender_eye>;
var fieldGenEV = <gregtech:gt.multiitem.technological:12104>;	// metaitem.01:32673>;
var glowstone = <minecraft:glowstone_dust>;
var hullEV = <gregtech:gt.meta.machine:220>;	// blockmachines:14>;	# = Titanium / IV
// var ingotDarkSteel = <ore:ingotDarkSteel>;
var ingotIron = <ore:ingotIron>;
var ingotNaqAlloy = <ore:ingotNaquadahAlloy>;
var ingotNaqAlloyGT = <gregtech:gt.meta.ingot:8684>;	// item.01:11325>;
var ingotNaqAlloySG = <SGCraft:naquadahIngot>;
var ingotRubber = <ore:ingotRubber>;
// var ingotSoularium = <ore:ingotSoularium>;
var irisBlade = <SGCraft:sgIrisBlade>;
var irisUpgrade = <SGCraft:sgIrisUpgrade>;
// var lapotronChip = <gregtech:gt.	// metaitem.01:32714>;
// var lensAmber = <gregtech:gt.meta.lens:8310>;	// item.01:24514>;
// var lensAqua = <gregtech:gt.meta.lens:	// item.01:24543>;
// var lensBlueTopaz = <gregtech:gt.meta	// item.01:24513>;
// var lensOpal = <gregtech:gt.meta	// item.01:24510>;
// var lensSapphire = <gregtech:gt.meta	// item.01:24503>;
// var lensTopaz = <gregtech:gt.meta	// item.01:24507>;
var motorEV = <gregtech:gt.multiitem.technological:12004>;	// metaitem.01:32603>;
var pistonEV = <gregtech:gt.multiitem.technological:12064>;	// metaitem.01:32643>;
var plateChrome = <ore:plateChrome>;
var plateNaqAlloy = <ore:plateTrinaquadalloy>;	// <ore:plateNaquadahAlloy>;
var plateRedstone = <gregtech:gt.meta.plateGem:8333>;	// item.01:17810>;
var plateTitanium = <gregtech:gt.meta.plate:220>;	// item.01:17028>;
var redstone = <minecraft:redstone>;
var sandstoneChiseled = <minecraft:sandstone:1>;
var sandstoneSmooth = <minecraft:sandstone:2>;
var sensorEV = <gregtech:gt.multiitem.technological:12144>;	// metaitem.01:32693>;
var stargateBase = <SGCraft:stargateBase>;
var stargateChevronBlock as IItemStack = <SGCraft:stargateRing:1>;
var stargateController as IItemStack = <SGCraft:stargateController>;
var stargateInterfaceOC = <SGCraft:ocInterface>;
var stargatePowerRF = <SGCraft:rfPowerUnit>;
var stargateRing as IItemStack = <SGCraft:stargateRing>;
var wireNaq8x = <gregtech:gt.multitileentity:29507>;	// blockmachines:1703>;
var wireTungsten8x = <gregtech:gt.multitileentity:29107>;	// blockmachines:1549>;

var controlRuby = <gregtech:gt.multiitem.technological:30402>;
var convertSapph = <gregtech:gt.multiitem.technological:30404>;
var transDimUpgrade = <SGCraft:sgChevronUpgrade>;
var plateCurvedEnderium = <gregtech:gt.meta.plateCurved:8710>;
var bedDust = <gregtech:gt.meta.dust:9222>; // 8599>; // <RotaryCraft:rotarycraft_item_powders:4>; // - Slate
var meteorDust = <gregtech:gt.meta.dust:8649>;
var rhodiumDust = <gregtech:gt.meta.dust:450>;
var triniumOre = <gregtech:gt.meta.oreRaw:1260>; // crushedPurified:1260>;

var rutheniumDust = <gregtech:gt.meta.dust:440>;
var ceriumDust = <gregtech:gt.meta.dust:580>;
var lanthanumDust = <gregtech:gt.meta.dust:570>;
var tritaniumOre = <gregtech:gt.meta.oreRaw:9204>; // TnO2

# Recipe Removal
recipes.remove(ingotNaqAlloySG);	// GT);

# Recipe Tweaks
recipes.remove(stargateBase);
recipes.addShaped(stargateBase, [
    [plateNaqAlloy, sensorEV, plateNaqAlloy],
    [fieldGenEV, hullEV, fieldGenEV],
    [emitterEV, crystalSGCore, emitterEV]]);
recipes.remove(stargateRing);
recipes.addShaped(stargateRing, [
    [plateNaqAlloy, motorEV, plateNaqAlloy],
    [emitterEV, casingEV, emitterEV],
    [conveyorEV, motorEV, conveyorEV]]);
recipes.remove(stargateChevronBlock);
recipes.addShaped(stargateChevronBlock, [
    [pistonEV, plateNaqAlloy, pistonEV],
    [emitterEV, casingEV, emitterEV],
    [motorEV, plateNaqAlloy, motorEV]]);
recipes.remove(stargateController);
recipes.addShaped(stargateController, [
    [button, sensorEV, button],
    [emitterEV, hullEV, emitterEV],
    [circuitMaster, crystalSGController, circuitMaster]]);
	
recipes.remove(capacitorLarge);
recipes.addShaped(capacitorLarge, [
    [plateChrome, plateChrome, plateChrome],
    [ingotRubber, ingotRubber, ingotRubber],
    [plateChrome, plateChrome, plateChrome]]);
// recipes.addShapeless(ingotNaqAlloyGT * 9, [blockNaqAlloy]);
// if (loadedMods in "IC2"){
  // var stargatePowerIC2 = <SGCraft:ic2PowerUnit>;
  // recipes.remove(stargatePowerIC2);
  // recipes.addShaped(stargatePowerIC2, [
      // [capacitorLarge, wireTungsten8x, capacitorLarge],
      // [wireTungsten8x, casingEV, wireTungsten8x],
      // [capacitorLarge, circuitMaster, capacitorLarge]]);
  // NEI.overrideName(stargatePowerIC2, "EU Stargate Power Unit");
// }
if(loadedMods in "RotaryCraft") {
// if(loadedMods in "EnderIO") {
  // var capacitorBankBasic = <EnderIO:blockCapBank:1>;
  // var capacitorDL = <EnderIO:itemBasicCapacitor:1>;
  // var resonatorEnder = <EnderIO:itemFrankenSkull:3>;
  // recipes.addShaped(stargatePowerRF, [
    // [capacitorDL, capacitorDL, capacitorDL],
    // [capacitorBankBasic, resonatorEnder,capacitorBankBasic],
    // [<ore:ingotSoularium>, <ore:ingotDarkSteel>, <ore:ingotSoularium>]]);
} else {
  recipes.remove(stargatePowerRF);
  recipes.addShaped(stargatePowerRF, [
	[<Forestry:chipsets:3>, <NuclearCraft:parts:9>, <ImmersiveEngineering:metalDevice:7>],	# intricate board, advanced plate
	[<ore:wireGt02Aluminum>, <Thaumcraft:ItemResource:15>, <ore:wireGt02Steel>],	# primal charm
	[<ImmersiveEngineering:metalDevice:7>, casingEV, <ore:oc:circuitChip2>]]);
// }
}
recipes.remove(irisBlade);
recipes.remove(irisUpgrade);
// Assembler.addRecipe(irisBlade, plateTitanium * 4, dustCarbon, 2400, 64);
// Assembler.addRecipe(irisUpgrade, irisBlade * 8, plateRedstone, 6000, 64);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", true, 64, 2400, [10000], [plateTitanium *4, dustCarbon], irisBlade);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.press", true, 64, 6000, [10000], [irisBlade *8, plateRedstone], irisUpgrade);
recipes.remove(stargateInterfaceOC);
recipes.addShaped(stargateInterfaceOC, [
    [ingotIron, ingotNaqAlloy, ingotIron],
    [<ore:oc:cable>, <ore:oc:circuitChip1>, <ore:oc:cable>],
    [ingotIron, <ore:oc:materialCircuitBoardPrinted>, ingotIron]]);
	
recipes.remove(transDimUpgrade);
recipes.addShaped(transDimUpgrade, [[plateCurvedEnderium, emitterEV, motorEV],
	[<ore:craftingToolScrewdriver>, <ore:craftingToolWrench>, <ore:craftingToolWireCutter>],
	[motorEV, emitterEV, plateCurvedEnderium]]);

# Recipe Creation
// ChemicalReactor.addRecipe(dustNaqAlloy, dustNaquadah, dustIron, 12000);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 512, 320, [10000], [bedDust, meteorDust, rhodiumDust], [<liquid:molten.atlarus> * 144, <liquid:molten.titanium> *288, <liquid:molten.caesium> *144, <liquid:helium> *100, <liquid:potion.strength.strong> *250, <liquid:xpjuice> *20], [<liquid:waterdirty> *250], [triniumOre *3]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 512, 80, [10000], [lanthanumDust, ceriumDust, rutheniumDust], [<liquid:sluicejuice> *8100, <liquid:xpjuice> *10], [<liquid:waterdirty> *8000], [tritaniumOre]);

// mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 32, 75, [10000], [<gregtech:gt.meta.dustTiny:60>, <gregtech:gt.meta.dustTiny:1260> *6, <gregtech:gt.meta.dustTiny:1740> *2], <gregtech:gt.meta.dust:8684>);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 32, 175, [10000], [<gregtech:gt.meta.dustSmall:60>, <gregtech:gt.meta.dustSmall:1260> *6, <gregtech:gt.meta.dustSmall:1740> *2], <gregtech:gt.meta.dustSmall:8684> *9);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 32, 680, [10000], [<gregtech:gt.meta.dust:60>, <gregtech:gt.meta.dust:1260> *6, <gregtech:gt.meta.dust:1740> *2], <gregtech:gt.meta.storage.dust:8684>);
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 32, 10, [10000], [<gregtech:gt.meta.dustDiv72:60>, <gregtech:gt.meta.dustDiv72:1260> *6, <gregtech:gt.meta.dustDiv72:1740> *2], <gregtech:gt.meta.dustDiv72:8684> *9);
# Assembler.addRecipe(crystalSGController, lapotronChip, lensTopaz, 6000, 32);
# Assembler.addRecipe(crystalSGController, lapotronChip, lensAmber, 6000, 32);
for lensY in <ore:craftingLensYellow>.items {
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.laserengraver", true, 256, 3000, [9500], [controlRuby, lensY *0], crystalSGController);
}
crystalSGController.addTooltip("Engraving has a "+ format.white("5%")+format.gray(" failure rate."));
# Assembler.addRecipe(crystalSGCore, lapotronChip, lensSapphire, 6000, 32);
# Assembler.addRecipe(crystalSGCore, lapotronChip, lensOpal, 6000, 32);
# Assembler.addRecipe(crystalSGCore, lapotronChip, lensBlueTopaz, 6000, 32);
# Assembler.addRecipe(crystalSGCore, lapotronChip, lensAqua, 6000, 32);
for lensB in <ore:craftingLensBlue>.items {
	mods.MTUtilsGT.addCustomRecipe("gt.recipe.laserengraver", true, 128, 4500, [9000], [convertSapph, lensB *0], crystalSGCore);
}
crystalSGCore.addTooltip("Engraving has a "+format.white("10%")+format.gray(" failure rate."));

// Naq Alloy Block to Oredict
// oreDict.blockNaquadahAlloy.add(blockNaqAlloy);

stargateController.displayName = "DHD (Dial Home Device)";
