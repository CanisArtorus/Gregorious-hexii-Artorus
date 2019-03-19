#modloaded Railcraft gregapi_post

// --- Created by *error user name found* ---
//-- Req. MTUtils at
//--"http://forum.industrial-craft.net/index.php?page=Thread&threadID=12095&s=44138faa40342fad4df1ce373825fb4d10095f5b"
// Edited and created by Canis Artorus

import mods.nei.NEI;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
import minetweaker.liquid.ILiquidStack;
import minetweaker.oredict.IOreDictEntry;
//import mods.MTUtilsGT;
import mods.forestry.Carpenter;

// --- Variables ---

val TrackmanBackpack = <Railcraft:backpack.trackman.t1>;
val IcemanBackpack = <Railcraft:backpack.iceman.t1>;
val ApothecaryBackpack = <Railcraft:backpack.apothecary.t1>;

#val TannedLeather = <Backpack:tannedLeather>;

var cotton = <harvestcraft:wovencottonItem>;
var leather = <harvestcraft:hardenedleatherItem>;
var silk = <Forestry:craftingMaterial:3>;

val TrackmanT2 = <Railcraft:backpack.trackman.t2>;
val IcemanT2 = <Railcraft:backpack.iceman.t2>;
val ApothecaryT2 = <Railcraft:backpack.apothecary.t2>;

val Saw = <ore:craftingToolSaw>;//--10
val HHammer = <ore:craftingToolHardHammer>;//--12
val SHammer = <ore:craftingToolSoftHammer>;//--14
#val Wrench = <ore:craftingToolWrench>;//--16
val File = <ore:craftingToolFile>;//--18
#val Crowbar = <ore:craftingToolCrowbar>;//--20
val Screwdriver = <ore:craftingToolScrewdriver>;//--22
//val Mortar = //-- <ore:craftingToolMortar>;//--24
#val WireCutter = <ore:craftingToolWireCutter>;//--26
#val Knife = <ore:craftingToolKnife>;//--34
val Chisel = <ore:craftingToolChisel>;//--48

val Water = <liquid:water>;
val Lube = <liquid:lubricant>;
val CCrete = <liquid:concrete>;

//var Oils = [
var creosote =	<ore:container1000creosote>;
//  <ore:bottleCreosoteOil>,
//  <ore:bucketCreosote>,
//  <ore:cellCreosoteOil>,
//--  <ore:bottleSeedOil>,
//--  <ore:bucketSeedOil>,
//--  <ore:cellSeedOil>
//] as IOreDictEntry[];

val GlassPane = <ore:paneGlass>;
val IronRod = <ore:stickAnyIron>;
val SteelRod = <ore:stickSteel>;
#val RedAlloyRod = <ore:stickRedAlloy>;
#val SSteelRod = <ore:stickStainlessSteel>;
#val TinRod = <ore:stickTin>;
var bronzeRod = <ore:stickBronze>;

val GoldScrew = <ore:screwGold>;
val CopperScrew = <ore:screwAnyCopper>;
val TinScrew = <ore:screwTin>;
val LeadScrew = <ore:screwLead>;
#val BronzeScrew = <ore:screwAnyBronze>;
val IronScrew = <ore:screwAnyIron>;
val SteelScrew = <ore:screwSteel>;
#val TiScrew = <ore:screwTitanium>;
#val SSteelScrew = <ore:screwStainlessSteel>;
#val TSteelScrew = <ore:screwTungstenSteel>;

#val IronGear = <ore:gearAnyIron>;
#val BronzeGear = <ore:gearAnyBronze>;
#val SSteelGear = <ore:gearStainlessSteel>;
#val TiGear = <ore:gearTitanium>;
#val TSteelGear = <ore:gearTungstenSteel>;

val BronzeRing = <ore:ringBronze>;
#val DiamondLens = <ore:lensDiamond>;

val IronPlate = <ore:plateAnyIron>;
val GoldPlate = <ore:plateGold>;
#val LapisPlate = <ore:plateLapis>;
#val DiamondPlate = <ore:plateDiamond>;
#val EmeraldPlate = <ore:plateEmerald>;
val CopperPlate = <ore:plateCopper>;
val TinPlate = <ore:plateTin>;
val LeadPlate = <ore:plateLead>;
#val RedAlloyPlate = <ore:plateRedAlloy>;
#val BronzePlate = <ore:plateBronze>;
val SteelPlate = <ore:plateSteel>;
#val ObsidianPlate = <ore:plateObsidian>;
#val DObsidianPlate = <ore:plateDenseObsidian>;
#val SSteelPlate = <ore:plateStainlessSteel>;
#val TiPlate = <ore:plateTitanium>;
#val IridiumPlate = <ore:plateIridium>;

#val RobustAluminumCasing = <ore:casingMachineDoubleAluminum>;

#val PlateDoubleCopper = <ore:plateDoubleAnyCopper>;
#val PlateDoubleElectrum = <ore:plateDoubleElectrum>;
#val PlateDoubleAluminum = <ore:plateDoubleAluminum>;
#val PlateDoubleSteel = <ore:plateDoubleSteel>;

val Snow = <minecraft:snow>;
val SnowL = <minecraft:snow_layer>;
val Stick = <ore:stickWood>;
val Fence = <minecraft:fence>;
val Log = <ore:logWood>;
val Plank = <ore:plankWood>;
val Slab = <ore:slabWood>;
var Chest = <ore:craftingChest>;
#Chest = <ore:chestWood>;

val Potion = <minecraft:potion:*>;
val Track = <minecraft:rail>;
// val String = <minecraft:string>;
val Torch = <minecraft:torch>;

val ConcreteBlock = <Railcraft:cube:1>;
val CreosoteWood = <Railcraft:cube:8>;
val CreosoteSlab = <Railcraft:slab:38>;

// Railcraft:machine.alpha:7, Coke Oven Brick
// Railcraft:machine.alpha:12, Blast Furnace Brick
// Railcraft:machine.alpha:3, Steam Oven
var rcWaterTank = <Railcraft:machine.alpha:14>;
// Railcraft:machine.alpha:8, Rolling Machine
// Railcraft:machine.alpha:15, Rock Crusher
// Railcraft:machine.alpha:11, Feed Station
// Railcraft:machine.alpha:6, Trade Station
// Railcraft:machine.alpha:0, World Anchor
// Railcraft:machine.alpha:2, Personal Anchor
// Railcraft:machine.alpha:13, Passive Anchor
// Railcraft:machine.alpha:4, Admin Anchor
// Railcraft:machine.alpha:1, Steam Turbine Housing
// Railcraft:machine.alpha:5, Smoker
// Railcraft:machine.alpha:9, Manual Steam Trap
// Railcraft:machine.alpha:10, Automated Steam Trap
// Railcraft:machine.beta:5, Solid Fueled Boiler Firebox
// Railcraft:machine.beta:6, Liquid Fueled Boiler Firebox
// Railcraft:machine.beta:3, Low Pressure Boiler Tank
// Railcraft:machine.beta:4, High Pressure Boiler Tank
// Railcraft:machine.beta:7, Hobbyist's Steam Engine
// Railcraft:machine.beta:8, Commercial Steam Engine
// Railcraft:machine.beta:9, Industrial Steam Engine
// Railcraft:machine.beta:10, Anchor Sentinel
// Railcraft:machine.beta:11, Void Chest
// Railcraft:machine.beta:12, Metals Chest

val IronStairs = <Railcraft:stair:6>;
val GoldStairs = <Railcraft:stair:7>;
val DiamondStairs = <Railcraft:stair:8>;
val CopperStairs = <Railcraft:stair:40>;
val TinStairs = <Railcraft:stair:41>;
val LeadStairs = <Railcraft:stair:42>;
val SteelStairs = <Railcraft:stair:43>;

val AbyssalLantern = <Railcraft:lantern.stone>;
val BleachedLantern = <Railcraft:lantern.stone:1>;
val BloodLantern = <Railcraft:lantern.stone:2>;
val FrostLantern = <Railcraft:lantern.stone:3>;
val InfernalLantern = <Railcraft:lantern.stone:4>;
val NetherLantern = <Railcraft:lantern.stone:5>;
val QuarriedLantern = <Railcraft:lantern.stone:6>;
val SandyLantern = <Railcraft:lantern.stone:7>;
val SandstoneLantern = <Railcraft:lantern.stone:8>;
val StoneLantern = <Railcraft:lantern.stone:9>;

val IronLantern = <Railcraft:lantern.metal>;
val GoldLantern = <Railcraft:lantern.metal:1>;
val CopperLantern = <Railcraft:lantern.metal:2>;
val TinLantern = <Railcraft:lantern.metal:3>;
val LeadLantern = <Railcraft:lantern.metal:4>;
val SteelLantern = <Railcraft:lantern.metal:5>;

val AbyssalBSlab = <Railcraft:slab:28>;
val BleachedBSlab = <Railcraft:slab:26>;
val BloodBSlab = <Railcraft:slab:27>;
val FrostBSlab = <Railcraft:slab:24>;
val InfernalBSlab = <Railcraft:slab:23>;
val NetherBSlab = <Railcraft:slab:29>;
val QuarriedBSlab = <Railcraft:slab:25>;
val SandyBSlab = <Railcraft:slab:22>;
val SandstoneSlab = <minecraft:stone_slab:1>;
val StoneSlab = <minecraft:stone_slab>;
val SnowSlab = <Railcraft:slab:3>;

// OD

<ore:craftingGlue>.add(<minecraft:slime_ball>);
//- <ore:craftingGlue>.add(<IC2:itemHarz>);
<ore:craftingGlue>.add(<BuildCraft|Transport:pipeWaterproof>);	//pipe sealant
<ore:craftingGlue>.add(<Forestry:propolis:1>);
<ore:craftingGlue>.add(<gregtech:gt.multiitem.bottles:2201>);	// pink slime
<ore:craftingGlue>.add(<gregtech:gt.multiitem.bottles:32766>);	// glue
<ore:craftingGlue>.addAll(<ore:itemGlue>);

<ore:bottleCreosote>.add(<Railcraft:fluid.creosote.bottle>);
<ore:bottleCreosoteOil>.add(<Railcraft:fluid.creosote.bottle>);
<ore:bucketCreosote>.add(<Railcraft:fluid.creosote.bucket>);
<ore:bucketCreosoteOil>.add(<Railcraft:fluid.creosote.bucket>);
<ore:container1000creosote>.add(<Railcraft:fluid.creosote.bottle>);
<ore:container1000creosote>.add(<Railcraft:fluid.creosote.bucket>);

<ore:plankSealedWood>.addAll(<ore:plankTreatedWood>);
<ore:plankAnyWood>.addAll(<ore:plankTreatedWood>);
<ore:plankTreatedWood>.mirror(<ore:plankSealedWood>);

<ore:slabSealedWood>.addAll(<ore:slabTreatedWood>);
<ore:slabAnyWood>.addAll(<ore:slabTreatedWood>);
<ore:slabTreatedWood>.mirror(<ore:slabSealedWood>);

<ore:stoneConcrete>.add(ConcreteBlock);

// --- recipes

recipes.remove(rcWaterTank);
// recipes.removeShaped(IronTankWall);
// recipes.removeShaped(IronTankGauge);
// recipes.removeShaped(SteelTankWall);
// recipes.removeShaped(SteelTankGauge);

// --- Backpacks ---, cross with Infitech2 by Jason McRay

// --- Trackman's Backpack
// recipes.addShaped(TrackmanBackpack, [
// [String, BronzeRing, String],
// [TannedLeather, Chest, TannedLeather],
// [Track, TannedLeather, Track]]);
//
// --- Iceman's Backpack
// recipes.addShaped(IcemanBackpack, [
// [String, BronzeRing, String],
// [TannedLeather, Chest, TannedLeather],
// [SnowSlab, TannedLeather, SnowSlab]]);
//
// --- Apothecary's Backpack
// recipes.addShaped(ApothecaryBackpack, [
// [String, BronzeRing, String],
// [TannedLeather, Chest, TannedLeather],
// [Potion, TannedLeather, Potion]]);

recipes.remove(TrackmanBackpack);
recipes.remove(IcemanBackpack);
recipes.remove(ApothecaryBackpack);

recipes.addShaped(TrackmanBackpack, [
	[cotton, Track, cotton],
	[leather, Track, leather],
	[leather, leather, leather] ]);
recipes.addShaped(IcemanBackpack, [
	[cotton, SnowSlab, cotton],
	[leather, SnowSlab, leather],
	[leather, leather, leather] ]);
recipes.addShaped(ApothecaryBackpack, [
	[cotton, Potion, cotton],
	[leather, Potion, leather],
	[leather, leather, leather] ]);

Carpenter.removeRecipe(TrackmanT2);
Carpenter.addRecipe(TrackmanT2, [
	[silk, BronzeRing, silk],
	[silk, silk, silk],
	[silk, silk, silk] ],
	<liquid:seedoil> * 500, 600, TrackmanBackpack);
Carpenter.removeRecipe(IcemanT2);
Carpenter.addRecipe(IcemanT2, [
	[silk, BronzeRing, silk],
	[silk, silk, silk],
	[silk, silk, silk] ],
	<liquid:seedoil> * 500, 600, IcemanBackpack);
Carpenter.removeRecipe(ApothecaryT2);
Carpenter.addRecipe(ApothecaryT2, [
	[silk, BronzeRing, silk],
	[silk, silk, silk],
	[silk, silk, silk] ],
	<liquid:seedoil> * 500, 600, ApothecaryBackpack);

// --- Stone Lamps ---
recipes.removeShaped(<Railcraft:lantern.stone:*>);
// --- Abyssal Block Lantern
recipes.addShaped(AbyssalLantern, [
[File, AbyssalBSlab, null],
[null, Torch, null],
[null, AbyssalBSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(AbyssalLantern, [
[null, AbyssalBSlab, File],
[null, Torch, null],
[Chisel, AbyssalBSlab, null]]);

// --- Bleached Bone Block Lantern
recipes.addShaped(BleachedLantern, [
[File, BleachedBSlab, null],
[null, Torch, null],
[null, BleachedBSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(BleachedLantern, [
[null, BleachedBSlab, File],
[null, Torch, null],
[Chisel, BleachedBSlab, null]]);

// --- Bloodstained Block Lantern
recipes.addShaped(BloodLantern, [
[File, BloodBSlab, null],
[null, Torch, null],
[null, BloodBSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(BloodLantern, [
[null, BloodBSlab, File],
[null, Torch, null],
[Chisel, BloodBSlab, null]]);

// --- Frostbound Block Lantern
recipes.addShaped(FrostLantern, [
[File, FrostBSlab, null],
[null, Torch, null],
[null, FrostBSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(FrostLantern, [
[null, FrostBSlab, File],
[null, Torch, null],
[Chisel, FrostBSlab, null]]);

// --- Infernal Block Lantern
recipes.addShaped(InfernalLantern, [
[File, InfernalBSlab, null],
[null, Torch, null],
[null, InfernalBSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(InfernalLantern, [
[null, InfernalBSlab, File],
[null, Torch, null],
[Chisel, InfernalBSlab, null]]);

// --- Nether Block Lantern
recipes.addShaped(NetherLantern, [
[File, NetherBSlab, null],
[null, Torch, null],
[null, NetherBSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(NetherLantern, [
[null, NetherBSlab, File],
[null, Torch, null],
[Chisel, NetherBSlab, null]]);

// --- Quarried Block Lantern
recipes.addShaped(QuarriedLantern, [
[File, QuarriedBSlab, null],
[null, Torch, null],
[null, QuarriedBSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(QuarriedLantern, [
[null, QuarriedBSlab, File],
[null, Torch, null],
[Chisel, QuarriedBSlab, null]]);

// --- Sandy Block Lantern
recipes.addShaped(SandyLantern, [
[File, SandyBSlab, null],
[null, Torch, null],
[null, SandyBSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(SandyLantern, [
[null, SandyBSlab, File],
[null, Torch, null],
[Chisel, SandyBSlab, null]]);

// --- Sandstone Lantern
recipes.addShaped(SandstoneLantern, [
[File, SandstoneSlab, null],
[null, Torch, null],
[null, SandstoneSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(SandstoneLantern, [
[null, SandstoneSlab, File],
[null, Torch, null],
[Chisel, SandstoneSlab, null]]);

// --- Stone Lantern
recipes.addShaped(StoneLantern, [
[File, StoneSlab, null],
[null, Torch, null],
[null, StoneSlab, Chisel]]);
// - Alternate Recipe
recipes.addShaped(StoneLantern, [
[null, StoneSlab, File],
[null, Torch, null],
[Chisel, StoneSlab, null]]);

// --- Metal Lamps ---
recipes.removeShaped(<Railcraft:lantern.metal:*>);
// --- Iron Lantern
recipes.addShaped(IronLantern, [
[IronScrew, IronPlate, IronScrew],
[Screwdriver, Torch, HHammer],
[IronScrew, IronPlate, IronScrew]]);

// --- Gold Lantern
recipes.addShaped(GoldLantern, [
[GoldScrew, GoldPlate, GoldScrew],
[Screwdriver, Torch, HHammer],
[GoldScrew, GoldPlate, GoldScrew]]);

// --- Copper Lantern
recipes.addShaped(CopperLantern, [
[CopperScrew, CopperPlate, CopperScrew],
[Screwdriver, Torch, HHammer],
[CopperScrew, CopperPlate, CopperScrew]]);

// --- Tin Lantern
recipes.addShaped(TinLantern, [
[TinScrew, TinPlate, TinScrew],
[Screwdriver, Torch, HHammer],
[TinScrew, TinPlate, TinScrew]]);

// --- Lead Lantern
recipes.addShaped(LeadLantern, [
[LeadScrew, LeadPlate, LeadScrew],
[Screwdriver, Torch, HHammer],
[LeadScrew, LeadPlate, LeadScrew]]);

// --- Steel Lantern
recipes.addShaped(SteelLantern, [
[SteelScrew, SteelPlate, SteelScrew],
[Screwdriver, Torch, HHammer],
[SteelScrew, SteelPlate, SteelScrew]]);

// --- Concrete ---
// gt.recipe.coagulator
// -	# not working?!?
// mods.MTUtilsGT.addCustomRecipe("gt.recipe.coagulator", false, 0, 300, [10000], null, CCrete * 144, null, [<Railcraft:cube:1>]);

// --- Creosote Wood ---
recipes.removeShaped(CreosoteWood);
recipes.removeShapeless(CreosoteWood);
recipes.removeShaped(CreosoteSlab);
recipes.removeShaped(<Railcraft:slab:*>);
// recipes.removeShapeless(<Railcraft:stair:38>);
recipes.removeShaped(<Railcraft:stair:38>);
// recipes.removeShaped(<Railcraft:stair:*>);

recipes.addShaped(CreosoteWood * 4, [
[Plank, Plank, Plank],
[Plank, creosote, Plank],
[SHammer, null, Saw]]);

// Wood Slab	- until 6.09.01
// recipes.addShaped(CreosoteSlab * 3, [
// [Slab, Slab, null],
// [creosote, Slab, null],
// [SHammer, null, Saw]]);

// Wood Stairs	- new wood pattern of 6.08.04
// recipes.addShaped(<Railcraft:stair:38> * 3, [
// [<ore:stairWood>, <ore:stairWood>, null],
// [creosote, <ore:stairWood>, null],
// [SHammer, Saw, null]]);
recipes.addShapedMirrored(<Railcraft:stair:38>*4, [
[Saw, CreosoteWood],
[CreosoteWood, CreosoteWood]]);
recipes.addShapedMirrored(<Railcraft:stair:38>*2, [
[Saw, CreosoteSlab],
[CreosoteSlab, CreosoteSlab]]);

// Wood Fence / Post
recipes.addShaped(<Railcraft:post> * 3, [
[<minecraft:fence>, <minecraft:fence>, null],
[creosote, <minecraft:fence>, null],
[SHammer, Saw, null]]);

// --- Ties ---
// --- Wood	- until 6.09.01
recipes.removeShaped(<Railcraft:part.tie>);
recipes.addShaped(<Railcraft:part.tie>*2, [
[CreosoteSlab, CreosoteSlab, CreosoteSlab]]);
// --- Stone

// --- Slabs ---

// --- Sandy Brick
recipes.addShaped(<Railcraft:slab:0> * 2, [
[Saw, <Railcraft:brick.sandy>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.sandy>], Water * 20, null, [<Railcraft:slab> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.sandy>], Lube * 5, null, [<Railcraft:slab> * 2]);

// --- Infernal Brick
recipes.addShaped(<Railcraft:slab:1> * 2, [
[Saw, <Railcraft:brick.infernal>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.infernal>], Water * 20, null, [<Railcraft:slab:1> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.infernal>], Lube * 5, null, [<Railcraft:slab:1> * 2]);

// --- Concrete
recipes.addShaped(<Railcraft:slab:2> * 2, [
[Saw, <ore:stoneConcrete>]]);
//-
for item in <ore:stoneConcrete>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[item], Water * 20, null, [<Railcraft:slab:2> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[item], Lube * 5, null, [<Railcraft:slab:2> * 2]);
}

// --- Snow
recipes.addShaped(<Railcraft:slab:3>, [
[SnowL, SnowL, SnowL]]);
//-
recipes.addShaped(<Railcraft:slab:3> * 4, [
[Snow, Snow]]);

// --- Ice
recipes.addShaped(<Railcraft:slab:4> * 2, [
[Saw, <minecraft:ice>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 12, 16, [10000],
[<minecraft:ice>], Water * 10, null, [<Railcraft:slab:4> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 6, 8, [10000],
[<minecraft:ice>], Lube, null, [<Railcraft:slab:4> * 2]);

// --- Packed Ice
recipes.addShaped(<Railcraft:slab:5> * 2, [
[Saw, <minecraft:packed_ice>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<minecraft:packed_ice>], Water * 15, null, [<Railcraft:slab:5> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 8, 8, [10000],
[<minecraft:packed_ice>], Lube * 2, null, [<Railcraft:slab:5> * 2]);

// --- Iron
recipes.addShaped(<Railcraft:slab:6> * 2, [
[Saw, <ore:blockIron>]]);
//-
for item in <ore:blockIron>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 6900, [10000],
[item], Water * 500, null, [<Railcraft:slab:6> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 1700, [10000],
[item], Lube * 50, null, [<Railcraft:slab:6> * 2]);
}

// --- Gold
recipes.addShaped(<Railcraft:slab:7> * 2, [
[Saw, <ore:blockGold>]]);
//-
for item in <ore:blockGold>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 6900, [10000],
[item], Water * 400, null, [<Railcraft:slab:7> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 1700, [10000],
[item], Lube * 40, null, [<Railcraft:slab:7> * 2]);
}

// --- Diamond
// recipes.addShaped(<Railcraft:slab:8> * 2, [
// [Saw, <ore:blockDiamond>]]);
//-
for item in <ore:blockDiamond>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 32, 7500, [10000],
[item], Water * 400, null, [<Railcraft:slab:8> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 32, 2000, [10000],
[item], Lube * 40, null, [<Railcraft:slab:8> * 2]);
}

// --- Frost Bound Brick
recipes.addShaped(<Railcraft:slab:9> * 2, [
[Saw, <Railcraft:brick.frostbound>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.frostbound>], Water * 20, null, [<Railcraft:slab:9> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.frostbound>], Lube * 5, null, [<Railcraft:slab:9> * 2]);

// --- Quarried Brick
recipes.addShaped(<Railcraft:slab:10> * 2, [
[Saw, <Railcraft:brick.quarried>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.quarried>], Water * 20, null, [<Railcraft:slab:10> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.quarried>], Lube * 5, null, [<Railcraft:slab:10> * 2]);

// --- Bleached Bone Brick
recipes.addShaped(<Railcraft:slab:11> * 2, [
[Saw, <Railcraft:brick.bleachedbone>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.bleachedbone>], Water * 20, null, [<Railcraft:slab:11> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.bleachedbone>], Lube * 5, null, [<Railcraft:slab:11> * 2]);

// --- Blood Stained Brick
recipes.addShaped(<Railcraft:slab:12> * 2, [
[Saw, <Railcraft:brick.bloodstained>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.bloodstained>], Water * 20, null, [<Railcraft:slab:12> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.bloodstained>], Lube * 5, null, [<Railcraft:slab:12> * 2]);

// --- Abyssal Brick
recipes.addShaped(<Railcraft:slab:13> * 2, [
[Saw, <Railcraft:brick.abyssal>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.abyssal>], Water * 20, null, [<Railcraft:slab:13> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.abyssal>], Lube * 5, null, [<Railcraft:slab:13> * 2]);

// --- Fitted Sandy Stone
recipes.addShaped(<Railcraft:slab:14> * 2, [
[Saw, <Railcraft:brick.sandy:1>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.sandy:1>], Water * 20, null, [<Railcraft:slab:14> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.sandy:1>], Lube * 5, null, [<Railcraft:slab:14> * 2]);

// --- Fitted Infernal Stone
recipes.addShaped(<Railcraft:slab:15> * 2, [
[Saw, <Railcraft:brick.infernal:1>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.infernal:1>], Water * 20, null, [<Railcraft:slab:15> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.infernal:1>], Lube * 5, null, [<Railcraft:slab:15> * 2]);

// --- Fitted Frost Bound Stone
recipes.addShaped(<Railcraft:slab:16> * 2, [
[Saw, <Railcraft:brick.frostbound:1>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.frostbound:1>], Water * 20, null, [<Railcraft:slab:16> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.frostbound:1>], Lube * 5, null, [<Railcraft:slab:16> * 2]);

// --- Fitted Quarried Stone
recipes.addShaped(<Railcraft:slab:17> * 2, [
[Saw, <Railcraft:brick.quarried:1>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.quarried:1>], Water * 20, null, [<Railcraft:slab:17> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.quarried:1>], Lube * 5, null, [<Railcraft:slab:17> * 2]);

// --- Fitted Bleached Bone Stone
recipes.addShaped(<Railcraft:slab:18> * 2, [
[Saw, <Railcraft:brick.bleachedbone:1>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.bleachedbone:1>], Water * 20, null, [<Railcraft:slab:18> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.bleachedbone:1>], Lube * 5, null, [<Railcraft:slab:18> * 2]);

// --- Blood Stained Stone
recipes.addShaped(<Railcraft:slab:19> * 2, [
[Saw, <Railcraft:brick.bloodstained:1>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.bloodstained:1>], Water * 20, null, [<Railcraft:slab:19> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.bloodstained:1>], Lube * 5, null, [<Railcraft:slab:19> * 2]);

// --- Fitted Abyssal Brick
recipes.addShaped(<Railcraft:slab:20> * 2, [
[Saw, <Railcraft:brick.abyssal:1>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.abyssal:1>], Water * 20, null, [<Railcraft:slab:20> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.abyssal:1>], Lube * 5, null, [<Railcraft:slab:20> * 2]);

// --- Fitted Nether Stone
recipes.addShaped(<Railcraft:slab:21> * 2, [
[Saw, <Railcraft:brick.nether:1>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.nether:1>], Water * 20, null, [<Railcraft:slab:21> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.nether:1>], Lube * 5, null, [<Railcraft:slab:21> * 2]);

// --- Sandy Block
recipes.addShaped(<Railcraft:slab:22> * 2, [
[Saw, <Railcraft:brick.sandy:2>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.sandy:2>], Water * 20, null, [<Railcraft:slab:22> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.sandy:2>], Lube * 5, null, [<Railcraft:slab:22> * 2]);

// --- Infernal Block
recipes.addShaped(<Railcraft:slab:23> * 2, [
[Saw, <Railcraft:brick.infernal:2>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.infernal:2>], Water * 20, null, [<Railcraft:slab:23> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.infernal:2>], Lube * 5, null, [<Railcraft:slab:23> * 2]);

// --- Frost Bound Block
recipes.addShaped(<Railcraft:slab:24> * 2, [
[Saw, <Railcraft:brick.frostbound:2>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.frostbound:2>], Water * 20, null, [<Railcraft:slab:24> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.frostbound:2>], Lube * 5, null, [<Railcraft:slab:24> * 2]);

// --- Quarried Block
recipes.addShaped(<Railcraft:slab:25> * 2, [
[Saw, <Railcraft:brick.quarried:2>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.quarried:2>], Water * 20, null, [<Railcraft:slab:25> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.quarried:2>], Lube * 5, null, [<Railcraft:slab:25> * 2]);

// --- Bleached Bone Block
recipes.addShaped(<Railcraft:slab:26> * 2, [
[Saw, <Railcraft:brick.bleachedbone:2>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.bleachedbone:2>], Water * 20, null, [<Railcraft:slab:26> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.bleachedbone:2>], Lube * 5, null, [<Railcraft:slab:26> * 2]);

// --- Blood Stained Block
recipes.addShaped(<Railcraft:slab:27> * 2, [
[Saw, <Railcraft:brick.bloodstained:2>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.bloodstained:2>], Water * 20, null, [<Railcraft:slab:27> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.bloodstained:2>], Lube * 5, null, [<Railcraft:slab:27> * 2]);

// --- Abyssal Block
recipes.addShaped(<Railcraft:slab:28> * 2, [
[Saw, <Railcraft:brick.abyssal:2>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.abyssal:2>], Water * 20, null, [<Railcraft:slab:28> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.abyssal:2>], Lube * 5, null, [<Railcraft:slab:28> * 2]);

// --- Nether Block
recipes.addShaped(<Railcraft:slab:29> * 2, [
[Saw, <Railcraft:brick.nether:2>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.nether:2>], Water * 20, null, [<Railcraft:slab:29> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.nether:2>], Lube * 5, null, [<Railcraft:slab:29> * 2]);

// --- Sandy Cobble
recipes.addShaped(<Railcraft:slab:30> * 2, [
[Saw, <Railcraft:brick.sandy:5>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.sandy:5>], Water * 20, null, [<Railcraft:slab:30> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.sandy:5>], Lube * 5, null, [<Railcraft:slab:30> * 2]);

// --- Infernal Cobble
recipes.addShaped(<Railcraft:slab:31> * 2, [
[Saw, <Railcraft:brick.infernal:5>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.infernal:5>], Water * 20, null, [<Railcraft:slab:31> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.infernal:5>], Lube * 5, null, [<Railcraft:slab:31> * 2]);

// --- Frost Bound Cobble
recipes.addShaped(<Railcraft:slab:32> * 2, [
[Saw, <Railcraft:brick.frostbound:5>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.frostbound:5>], Water * 20, null, [<Railcraft:slab:32> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.frostbound:5>], Lube * 5, null, [<Railcraft:slab:32> * 2]);

// --- Quarried Cobble
recipes.addShaped(<Railcraft:slab:33> * 2, [
[Saw, <Railcraft:brick.quarried:5>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.quarried:5>], Water * 20, null, [<Railcraft:slab:33> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.quarried:5>], Lube * 5, null, [<Railcraft:slab:33> * 2]);

// --- Bleached Bone Cobble
recipes.addShaped(<Railcraft:slab:34> * 2, [
[Saw, <Railcraft:brick.bleachedbone:5>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.bleachedbone:5>], Water * 20, null, [<Railcraft:slab:34> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.bleachedbone:5>], Lube * 5, null, [<Railcraft:slab:34> * 2]);

// --- Blood Stained Cobble
recipes.addShaped(<Railcraft:slab:35> * 2, [
[Saw, <Railcraft:brick.bloodstained:5>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.bloodstained:5>], Water * 20, null, [<Railcraft:slab:35> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.bloodstained:5>], Lube * 5, null, [<Railcraft:slab:35> * 2]);

// --- Abyssal Cobble
recipes.addShaped(<Railcraft:slab:36> * 2, [
[Saw, <Railcraft:brick.abyssal:5>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.abyssal:5>], Water * 20, null, [<Railcraft:slab:36> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.abyssal:5>], Lube * 5, null, [<Railcraft:slab:36> * 2]);

// --- Nether Cobble
recipes.addShaped(<Railcraft:slab:37> * 2, [
[Saw, <Railcraft:brick.nether:5>]]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 64, [10000],
[<Railcraft:brick.nether:5>], Water * 20, null, [<Railcraft:slab:37> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 16, [10000],
[<Railcraft:brick.nether:5>], Lube * 5, null, [<Railcraft:slab:37> * 2]);

// wood (again)
// MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 96, [10000],
// [CreosoteWood], Water * 10, null, [CreosoteSlab * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 24, [10000],
[CreosoteWood], Lube, null, [CreosoteSlab * 2]);

// --- Obsidian
// recipes.addShaped(<Railcraft:slab:39> * 2, [
// [Saw, <ore:stoneObsidian>]]);
//-
for item in <ore:blockObsidian>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 4000, [10000],
[item], Water * 40, null, [<Railcraft:slab:39> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 1000, [10000],
[item], Lube * 5, null, [<Railcraft:slab:39> * 2]);
}

// --- Copper
recipes.addShaped(<Railcraft:slab:40> * 2, [
[Saw, <ore:blockCopper>]]);
//-
for item in <ore:blockCopper>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 2300, [10000],
[item], Water * 900, null, [<Railcraft:slab:40> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 500, [10000],
[item], Lube * 90, null, [<Railcraft:slab:40> * 2]);
}
<ore:slabCopper>.add(<Railcraft:slab:40>);

// --- Tin
recipes.addShaped(<Railcraft:slab:41> * 2, [
[Saw, <ore:blockTin>]]);
//-
for item in <ore:blockTin>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 2300, [10000],
[item], Water * 800, null, [<Railcraft:slab:41> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 500, [10000],
[item], Lube * 80, null, [<Railcraft:slab:41> * 2]);
}

// --- Lead
recipes.addShaped(<Railcraft:slab:42> * 2, [
[Saw, <ore:blockLead>]]);
//-
for item in <ore:blockLead>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 4600, [10000],
[item], Water * 700, null, [<Railcraft:slab:42> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 1100, [10000],
[item], Lube * 70, null, [<Railcraft:slab:42> * 2]);
}
<ore:slabLead>.add(<Railcraft:slab:42>);

// --- Steel
// recipes.addShaped(<Railcraft:slab:43> * 2, [
// [Saw, <ore:blockSteel>]]);
//-
for item in <ore:blockSteel>.items {
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 6900, [10000],
[item], Water * 900, null, [<Railcraft:slab:43> * 2]);
//-
mods.MTUtilsGT.addCustomRecipe("gt.recipe.cutter", true, 16, 1700, [10000],
[item], Lube * 90, null, [<Railcraft:slab:43> * 2]);
}
<ore:slabSteel>.add(<Railcraft:slab:43>);

// --- Stairs ---
var gtBasalt = <gregtech:gt.stone.basalt:1>;
var bGran = <gregtech:gt.stone.granite.black:1>;
var rGran = <gregtech:gt.stone.granite.red:1>;
var bSchist = <gregtech:gt.stone.blueschist:1>;

// Abyssal cobble stairs
recipes.addShaped(<Railcraft:stair:36> *4, [[gtBasalt, null, null], [gtBasalt, gtBasalt, null], [gtBasalt, gtBasalt, gtBasalt]]);
recipes.addShaped(<Railcraft:stair:36> *4, [[bGran, null, null], [bGran, bGran, null], [bGran, bGran, bGran]]);
// bloodstained cobble stairs 
recipes.addShaped(<Railcraft:stair:35> *4, [[rGran, null, null], [rGran, rGran, null], [rGran, rGran, rGran]]);
// frostbound cobble stairs
recipes.addShaped(<Railcraft:stair:32> *4, [[bSchist, null, null], [bSchist, bSchist, null], [bSchist, bSchist, bSchist]]);

// --- Iron Stairs
recipes.removeShaped(IronStairs);
recipes.addShapedMirrored(IronStairs * 4, [
[IronPlate, HHammer, null],
[IronPlate, IronPlate, File],
[IronPlate, IronPlate, IronPlate]]);

// --- Steel Stairs
recipes.removeShaped(SteelStairs);
recipes.addShapedMirrored(SteelStairs * 4, [
[SteelPlate, HHammer, null],
[SteelPlate, SteelPlate, File],
[SteelPlate, SteelPlate, SteelPlate]]);

// --- Copper Stairs
recipes.removeShaped(CopperStairs);
recipes.addShapedMirrored(CopperStairs * 4, [
[CopperPlate, HHammer, null],
[CopperPlate, CopperPlate, File],
[CopperPlate, CopperPlate, CopperPlate]]);

// --- Tin Stairs
recipes.removeShaped(TinStairs);
recipes.addShapedMirrored(TinStairs * 4, [
[TinPlate, HHammer, null],
[TinPlate, TinPlate, File],
[TinPlate, TinPlate, TinPlate]]);

// --- Lead Stairs
recipes.removeShaped(LeadStairs);
recipes.addShapedMirrored(LeadStairs * 4, [
[LeadPlate, HHammer, null],
[LeadPlate, LeadPlate, File],
[LeadPlate, LeadPlate, LeadPlate]]);

// --- Gold Stairs
recipes.removeShaped(GoldStairs);
recipes.addShapedMirrored(GoldStairs * 4, [
[GoldPlate, HHammer, null],
[GoldPlate, GoldPlate, File],
[GoldPlate, GoldPlate, GoldPlate]]);

// --- Diamond Stairs
// recipes.removeShaped(DiamondStairs);
// recipes.addShapedMirrored(DiamondStairs * 4, [
// [DiamondPlate, Chisel, null],
// [DiamondPlate, DiamondPlate, File],
// [DiamondPlate, DiamondPlate, DiamondPlate]]);

// --- Steel Anvil
recipes.removeShaped(<Railcraft:anvil>);
recipes.addShaped(<Railcraft:anvil>, [
[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>],
[HHammer, SteelRod, Chisel],
[SteelPlate, SteelRod, SteelPlate]]);

// --- Water Tank ---
recipes.addShaped(rcWaterTank * 3, [
[Plank, Plank, Plank],
[IronRod, SHammer, IronRod],
[CreosoteSlab, <ore:craftingGlue>, CreosoteSlab]]);

recipes.addShaped(rcWaterTank, [
	[Plank, SHammer, Plank],
	[bronzeRod, <ore:craftingGlue>, bronzeRod],
	[Plank, Plank, Plank] ] );

// for iCoke in <ore:coalCoke>.items {
	// mods.railcraft.BlastFurnace.addFuel(iCoke);
// }
mods.railcraft.BlastFurnace.addFuel(<ImmersiveEngineering:material:6>);
mods.railcraft.BlastFurnace.addFuel(<gregtech:gt.meta.gem:8349>);
mods.railcraft.BlastFurnace.addFuel(<gregtech:gt.meta.crushedPurified:8349>);
mods.railcraft.BlastFurnace.addFuel(<gregtech:gt.meta.crushedCentrifuged:8349>);
mods.railcraft.BlastFurnace.addFuel(<gregtech:gt.meta.dust:8349>);
mods.railcraft.BlastFurnace.addFuel(<gregtech:gt.meta.dustSmall:8349>);
mods.railcraft.BlastFurnace.addFuel(<gregtech:gt.meta.dustTiny:8349>);
mods.railcraft.BlastFurnace.addFuel(<gregtech:gt.meta.dustDiv72:8349>);

// mods.railcraft.CokeOven.addRecipe(outItem, outFluid, inItem, tTime)
// mods.railcraft.RockCrusher.addRecipe(iIn, bDmg, bNBT, iOut[], fChances[])
// mods.railcraft.Rolling.addShaped();

// var ii = <ore:ingotIron>;	# not working?
// recipes.removeShaped(<Railcraft:part.plate:0>, [[ii, ii, ii],[ii, <ore:blockIron>, ii],[ii, ii, ii]]);
