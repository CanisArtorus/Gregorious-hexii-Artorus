#modloaded immersiveengineering gregapi_post

// --- Created by *error user name found* ---
// finished by Canis Artorus

//import mods.nei.NEI;
import minetweaker.item.IItemStack;
import minetweaker.oredict.IOreDictEntry;

// --- Variables ---
val Saw = <ore:craftingToolSaw>;//--10
val HHammer = <ore:craftingToolHardHammer>;//--12
val SHammer = <ore:craftingToolSoftHammer>;//--14
val Wrench = <ore:craftingToolWrench>;//--16
val File = <ore:craftingToolFile>;//--18
val Crowbar = <ore:craftingToolCrowbar>;//--20
val Screwdriver = <ore:craftingToolScrewdriver>;//--22
val WireCutter = <ore:craftingToolWireCutter>;//--26
val Knife = <ore:craftingToolKnife>;//--34
val Chisel = <ore:craftingToolChisel>;//--48

val IngotRubber = <ore:ingotRubber>;
val FineCopper = <ore:wireFineAnyCopper>;
val FineElectrum = <ore:wireFineElectrum>;
val FineAluminum = <ore:wireFineAluminum>;
val FineSteel = <ore:wireFineSteel>;

val WireDoubleCopper = <ore:wireGt02AnyCopper>;
val WireDoubleElectrum = <ore:wireGt02Electrum>;
val WireDoubleAluminum = <ore:wireGt02Aluminum>;
val WireDoubleSteel = <ore:wireGt02Steel>;

val PlateRubber = <ore:plateRubber>;
val PlateSi = <ore:plateSilicon>;
val PlateCupronickel = <ore:plateCupronickel>;
val PlateIron = <ore:plateAnyIron>;
val PlateSteel = <ore:plateSteel>;
val PlateAluminum = <ore:plateAluminum>;

val RobustAluminumCasing = <ore:casingMachineDoubleAluminum>;

val PlateDoubleCopper = <ore:plateDoubleAnyCopper>;
val PlateDoubleElectrum = <ore:plateDoubleElectrum>;
val PlateDoubleAluminum = <ore:plateDoubleAluminum>;
val PlateDoubleSteel = <ore:plateDoubleSteel>;
val PlateDoubleSteelGalvanized = <ore:plateDoubleSteelGalvanized>;

val Stick = <ore:stickWood>;
val Fence = <minecraft:fence>;
val Log = <ore:logWood>;
val Plank = <ore:plankWood>;
val Slab = <ore:slabWood>;
//var Chest = <ore:craftingChest>;
var Chest = <ore:chestWood>;

val TSlab = <ImmersiveEngineering:woodenDecoration:2>;

val PipeSteel = <ore:pipeSmallSteel>;
val ScrewIron = <ore:screwAnyIron>;
val FoilIron = <ore:foilAnyIron>;
val RingIron = <ore:ringAnyIron>;
val StickSteel = <ore:stickSteel>;
val StickAluminum = <ore:stickAluminum>;
val Mag = <ore:stickLongIronMagnetic>;
val HardenedClay = <ore:craftingHardenedClay>;
var clay = <minecraft:clay_ball>;
var brick = <minecraft:brick>;
var sandSt = <ore:stoneSand>;
var nBrick = <minecraft:netherbrick>;

val CopperCoil = <ImmersiveEngineering:storage:8>;
val ElectrumCoil = <ImmersiveEngineering:storage:9>;
val AluSteelCoil = <ImmersiveEngineering:storage:10>;

val SheetIron = <ImmersiveEngineering:metalDecoration:10>;

val InsulGlass = <ImmersiveEngineering:stoneDevice:4>;

val SteelFence = <ImmersiveEngineering:metalDecoration>;
val SteelScaffold = <ImmersiveEngineering:metalDecoration:1>;
val SteelSlope = <ImmersiveEngineering:metalDecoration:3>;
val AluminumScaffold = <ImmersiveEngineering:metalDecoration:13>;
val AluminumFence = <ImmersiveEngineering:metalDecoration:12>;
val AluminumSlope = <ImmersiveEngineering:metalDecoration:15>;

val Hemp = <ImmersiveEngineering:material:3>;
val HempWire = <ImmersiveEngineering:coil:3>;

// ImmersiveEngineering:metalDevice:13, Item Router
// ImmersiveEngineering:metalDevice:14, Core Sample Drill

var X = <ore:container1000creosote>;
/*
var Oils = [
  <ore:bottleCreosoteOil>,
  <ore:bucketCreosoteOil>,
//--  <ore:bottleSeedOil>,
//--  <ore:bucketSeedOil>
] as IOreDictEntry[];
*/
// OD

<ore:gemCoalCoke>.add(<ImmersiveEngineering:material:6>);
<ore:dustCoalCoke>.add(<ImmersiveEngineering:metal:17>);
<ore:dustCoke>.mirror(<ore:dustCoalCoke>);

<ore:bottleCreosote>.add(<ImmersiveEngineering:fluidContainers>);
<ore:bottleCreosoteOil>.add(<ImmersiveEngineering:fluidContainers>);
X.add(<ImmersiveEngineering:fluidContainers:0>);
<ore:bucketCreosote>.add(<ImmersiveEngineering:fluidContainers:1>);
<ore:bucketCreosoteOil>.add(<ImmersiveEngineering:fluidContainers:1>);
X.add(<ImmersiveEngineering:fluidContainers:1>);

<ore:bottleSeedOil>.add(<ImmersiveEngineering:fluidContainers:2>);
<ore:bucketSeedOil>.add(<ImmersiveEngineering:fluidContainers:3>);

<ore:bottleBiomass>.add(<ImmersiveEngineering:fluidContainers:4>);
<ore:bottleBioMass>.add(<ImmersiveEngineering:fluidContainers:4>);
<ore:bucketBiomass>.add(<ImmersiveEngineering:fluidContainers:5>);
<ore:bucketBioMass>.add(<ImmersiveEngineering:fluidContainers:5>);

<ore:dustNetherQuartz>.add(<ImmersiveEngineering:metal:18>);
<ore:dustGraphite>.add(<ImmersiveEngineering:metal:19>);
<ore:dustHOPGraphite>.mirror(<ore:dustGraphite>);

<ore:blockIngotAluminium>.add(<ImmersiveEngineering:storage:1>);
<ore:blockIngotNickel>.add(<ImmersiveEngineering:storage:4>);
<ore:blockIngotCupronickel>.add(<ImmersiveEngineering:storage:5>);
<ore:blockIngotElectrum>.add(<ImmersiveEngineering:storage:6>);

<ore:plankSealedWood>.addAll(<ore:plankTreatedWood>);
<ore:plankAnyWood>.addAll(<ore:plankTreatedWood>);
<ore:plankTreatedWood>.mirror(<ore:plankSealedWood>);

<ore:slabSealedWood>.addAll(<ore:slabTreatedWood>);
<ore:slabAnyWood>.addAll(<ore:slabTreatedWood>);
<ore:slabTreatedWood>.mirror(<ore:slabSealedWood>);

<ore:stairTreatedWood>.add(<ImmersiveEngineering:woodenStairs:*>);
<ore:stairAnyWood>.add(<ImmersiveEngineering:woodenStairs:*>);

// --- recipes

// Coils
recipes.remove(<ImmersiveEngineering:coil:*>);

recipes.addShaped(<ImmersiveEngineering:coil>, [
[FineCopper, FineCopper, FineCopper],
[FineCopper, Stick, FineCopper],
[FineCopper, FineCopper, FineCopper]]);

recipes.addShaped(<ImmersiveEngineering:coil:1>, [
[FineElectrum, FineElectrum, FineElectrum],
[FineElectrum, <ore:stickRubber>, FineElectrum],
[FineElectrum, FineElectrum, FineElectrum]]);

recipes.addShaped(<ImmersiveEngineering:coil:2>, [
[FineSteel, FineAluminum, FineSteel],
[FineAluminum, IngotRubber, FineAluminum],
[FineSteel, FineAluminum, FineSteel]]);
//-
recipes.addShaped(<ImmersiveEngineering:coil:2>, [
[FineAluminum, FineSteel, FineAluminum],
[FineSteel, IngotRubber, FineSteel],
[FineAluminum, FineSteel, FineAluminum]]);

recipes.addShaped(HempWire * 6, [
[Hemp, Hemp, Hemp],
[Hemp, Stick, Hemp],
[Hemp, Hemp, Hemp]]);

recipes.addShaped(<ImmersiveEngineering:coil:4>, [
[FineSteel, FineSteel, FineSteel],
[FineSteel, <ore:stickWoodSealed>, FineSteel],
[FineSteel, FineSteel, FineSteel]]);

// Coil Blocks
recipes.remove(CopperCoil);
recipes.addShaped(CopperCoil, [
[WireDoubleCopper, WireDoubleCopper, WireDoubleCopper],
[WireDoubleCopper, Wrench, WireDoubleCopper],
[WireDoubleCopper, WireDoubleCopper, WireDoubleCopper]]);

recipes.remove(ElectrumCoil);
recipes.addShaped(ElectrumCoil, [
[WireDoubleElectrum, WireDoubleElectrum, WireDoubleElectrum],
[WireDoubleElectrum, Wrench, WireDoubleElectrum],
[WireDoubleElectrum, WireDoubleElectrum, WireDoubleElectrum]]);

recipes.remove(AluSteelCoil);
recipes.addShaped(AluSteelCoil, [
[WireDoubleAluminum, WireDoubleSteel, WireDoubleAluminum],
[WireDoubleSteel, Wrench, WireDoubleSteel],
[WireDoubleAluminum, WireDoubleSteel, WireDoubleAluminum]]);
//-
recipes.addShaped(AluSteelCoil, [
[WireDoubleSteel, WireDoubleAluminum, WireDoubleSteel],
[WireDoubleAluminum, Wrench, WireDoubleAluminum],
[WireDoubleSteel, WireDoubleAluminum, WireDoubleSteel]]);

// Wire Connectors
recipes.remove(<ImmersiveEngineering:metalDevice:0>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:0> * 8, [
[HardenedClay, WireDoubleCopper, HardenedClay],
[Wrench, WireDoubleCopper, WireCutter],
[HardenedClay, WireDoubleCopper, HardenedClay]]);

recipes.remove(<ImmersiveEngineering:metalDevice:2>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:2> * 8, [
[HardenedClay, WireDoubleElectrum, HardenedClay],
[Wrench, WireDoubleElectrum, WireCutter],
[HardenedClay, WireDoubleElectrum, HardenedClay]]);

recipes.remove(<ImmersiveEngineering:metalDevice:5>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:5> * 8, [
[InsulGlass, WireDoubleSteel, InsulGlass],
[Wrench, WireDoubleSteel, WireCutter],
[InsulGlass, WireDoubleSteel, InsulGlass]]);

recipes.remove(<ImmersiveEngineering:metalDevice:6>);
recipes.addShapedMirrored(<ImmersiveEngineering:metalDevice:6> * 4, [
[InsulGlass, WireDoubleAluminum, HardenedClay],
[Wrench, WireDoubleAluminum, WireCutter],
[HardenedClay, WireDoubleAluminum, InsulGlass]]);

// Capacitors
recipes.remove(<ImmersiveEngineering:metalDevice:1>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:1>, [
[PlateIron, PlateIron, PlateIron],
[WireDoubleCopper, <ore:wireGt02Lead>, WireDoubleCopper],
[TSlab, <ore:wireFineRedAlloy>, TSlab]]);

recipes.remove(<ImmersiveEngineering:metalDevice:3>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:3>, [
[PlateIron, PlateSteel, PlateIron],
[WireDoubleElectrum, <ore:wireGt04Lead>, WireDoubleElectrum],
[TSlab, <ore:wireGt01RedAlloy>, TSlab]]);

recipes.remove(<ImmersiveEngineering:metalDevice:7>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:7>, [
[PlateSteel, PlateSteel, PlateSteel],
[WireDoubleAluminum, <ore:wireGt08Lead>, WireDoubleAluminum],
[TSlab, <ore:wireGt01RedAlloy>, TSlab]]);

// Transformers
recipes.remove(<ImmersiveEngineering:metalDevice:4>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:4>, [
[<ImmersiveEngineering:metalDevice:0>, ElectrumCoil, <ImmersiveEngineering:metalDevice:2>],
[SheetIron, SheetIron, SheetIron],
[SheetIron, WireCutter, SheetIron]]);

recipes.remove(<ImmersiveEngineering:metalDevice:8>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:8>, [
[<ImmersiveEngineering:metalDevice:2>, AluSteelCoil, <ImmersiveEngineering:metalDevice:6>],
[SheetIron, SheetIron, SheetIron],
[SheetIron, WireCutter, SheetIron]]);

// Kinetic Dynamo -- allow pre-Al
recipes.remove(<ImmersiveEngineering:metalDevice:9>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:9>, [
[PlateDoubleSteelGalvanized, Mag, PlateDoubleSteelGalvanized],
[PlateDoubleSteelGalvanized, CopperCoil, PlateDoubleSteelGalvanized],
[WireCutter, Wrench, HHammer]]);

// Thermoelectric Generator -- use standard HU & CU contacts
recipes.remove(<ImmersiveEngineering:metalDevice:10>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:10>, [
[PlateCupronickel, PlateDoubleCopper, PlateCupronickel],
[WireCutter, RobustAluminumCasing, HHammer],
[PlateCupronickel, PlateSi, PlateCupronickel]]);

// Conveyor
recipes.remove(<ImmersiveEngineering:metalDevice:11>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:11> * 5, [
[PlateRubber, PlateRubber, Knife],
[RingIron, PlateIron, HHammer],
[ScrewIron, Screwdriver, Crowbar]]);

recipes.addShaped(<ImmersiveEngineering:metalDevice:11> * 3, [
[<minecraft:leather>, <minecraft:leather>, Knife],
[RingIron, PlateIron, HHammer],
[ScrewIron, Screwdriver, Crowbar]]);

recipes.addShaped(<ImmersiveEngineering:metalDevice:11> * 4, [
[<erebus:materials:49>, <erebus:materials:49>, Knife],
[RingIron, PlateIron, HHammer],
[ScrewIron, Screwdriver, Crowbar]]);

// Heater
recipes.remove(<ImmersiveEngineering:metalDevice:12>);
recipes.addShaped(<ImmersiveEngineering:metalDevice:12>, [
[HHammer, PlateCupronickel, WireCutter],
[PlateCupronickel, CopperCoil, PlateCupronickel],
[PlateDoubleAluminum, Wrench, PlateDoubleAluminum]]);

// Item Router
// --- Do Later

// Sample Drill
// --- Fine

// Drop Belt
// --- Fine
recipes.addShaped(<ImmersiveEngineering:metalDevice:15>, [[<ImmersiveEngineering:metalDevice:11>, null], [<ore:caHopper>, null]]);

// Breaker Switch
recipes.remove(<ImmersiveEngineering:metalDevice2>);
recipes.addShaped(<ImmersiveEngineering:metalDevice2>, [
[<minecraft:lever>, WireCutter, null],
[WireDoubleCopper, HardenedClay, null],
[null, null, null]]);

// Powered Lantern
// --- use Lumium
// --- Do Later
recipes.remove(<ImmersiveEngineering:metalDevice2:3>);
recipes.addShaped(<ImmersiveEngineering:metalDevice2:3> * 2, [[Wrench, <ore:plateCurvedAnyIron>, null],
	[<minecraft:glass_pane:*>, <ore:ingotLumium>, <minecraft:glass_pane:*>],
	[<ImmersiveEngineering:metalDevice:0>, RingIron, <ImmersiveEngineering:metalDevice:0>]]);

// Floodlight
// --- use Lumium
// --- Do Later
recipes.remove(<ImmersiveEngineering:metalDevice2:4>);
recipes.addShaped(<ImmersiveEngineering:metalDevice2:4>, 
	[[Screwdriver, PlateDoubleSteelGalvanized, HHammer],
	[<ore:lensGlass>, <ore:plateDoubleLumium>, ElectrumCoil],
	[<ore:screwAnyIronSteel>, StickSteel, SteelSlope]]);

// Fluid Pipe
// --- Do Later
recipes.remove(<ImmersiveEngineering:metalDevice2:5>);
recipes.addShapeless(<ImmersiveEngineering:metalDevice2:5>, [PipeSteel, RingIron, ScrewIron, Screwdriver]);

// Fluid Pump
// --- Do Later
recipes.remove(<ImmersiveEngineering:metalDevice2:6>);
recipes.addShaped(<ImmersiveEngineering:metalDevice2:6>, 
	[[Wrench, CopperCoil, null],
	[PlateDoubleSteelGalvanized, Mag, PlateDoubleSteelGalvanized],
	[RingIron, <gregtech:gt.multitileentity:16001>, RingIron]]);

// Steel Fence
recipes.remove(SteelFence);
recipes.addShaped(SteelFence * 6, [
[StickSteel, StickSteel, StickSteel],
[StickSteel, StickSteel, StickSteel],
[null, Wrench, null]]);

// Steel Scaffold
recipes.remove(SteelScaffold);
recipes.addShaped(SteelScaffold * 6, [
[PlateSteel, PlateSteel, PlateSteel],
[Crowbar, SteelFence, HHammer],
[SteelFence, Wrench, SteelFence]]);
//- from other version
recipes.addShapeless(SteelScaffold, [<ImmersiveEngineering:metalDecoration:11>]);

// Lantern
// --- Fine

// Steel Slope
recipes.remove(SteelSlope);
recipes.addShapedMirrored(SteelSlope * 6, [
[StickSteel, Crowbar, Wrench],
[SteelScaffold, StickSteel, HHammer],
[SteelScaffold, SteelScaffold, StickSteel]]);

// Steel Mount
recipes.remove(<ImmersiveEngineering:metalDecoration:8>);
recipes.addShaped(<ImmersiveEngineering:metalDecoration:8> * 4, [
[null, PlateSteel, null],
[HHammer, SteelFence, Wrench],
[null, PlateSteel, null]]);

// Steel Hanger
recipes.remove(<ImmersiveEngineering:metalDecoration:9>);
recipes.addShaped(<ImmersiveEngineering:metalDecoration:9> * 4, [
[PlateSteel, SteelFence, SteelFence],
[Wrench, null, SteelFence],
[null, HHammer, PlateSteel]]);
/*
// Sheet Iron Block	-- revert
recipes.remove(SheetIron);
recipes.addShaped(SheetIron * 2, [
[FoilIron, FoilIron, FoilIron],
[FoilIron, Crowbar, FoilIron],
[FoilIron, FoilIron, FoilIron]]);
*/
// Lightning rod
// --- Fine

// Aluminum Fence
recipes.remove(AluminumFence);
recipes.addShaped(AluminumFence * 6, [
[StickAluminum, StickAluminum, StickAluminum],
[StickAluminum, StickAluminum, StickAluminum],
[null, Wrench, null]]);

// Aluminum Scaffold
recipes.remove(AluminumScaffold);
recipes.addShaped(AluminumScaffold * 6, [
[PlateAluminum, PlateAluminum, PlateAluminum],
[Crowbar, AluminumFence, HHammer],
[AluminumFence, Wrench, AluminumFence]]);
//- from other version
recipes.addShapeless(AluminumScaffold, [<ImmersiveEngineering:metalDecoration:14>]);

// Aluminum Slope
recipes.remove(AluminumSlope);
recipes.addShapedMirrored(AluminumSlope * 6, [
[StickAluminum, Crowbar, Wrench],
[AluminumScaffold, StickAluminum, HHammer],
[AluminumScaffold, AluminumScaffold, StickAluminum]]);

// Wood Post
// --- Fine

// Engineer's table
// --- Fine

recipes.remove(<ImmersiveEngineering:woodenDevice:4>);
recipes.remove(<ImmersiveEngineering:woodenDevice:6>);
recipes.remove(<ImmersiveEngineering:woodenDecoration:2>);
recipes.remove(<ImmersiveEngineering:woodenDecoration:5>);
recipes.remove(<ImmersiveEngineering:woodenDecoration:6>);
recipes.remove(<ImmersiveEngineering:treatedWood>);
recipes.remove(<ImmersiveEngineering:material:0>);

//for i, X in Oils {

// Wood Crate
recipes.addShaped(<ImmersiveEngineering:woodenDevice:4>, [
[Chest, Saw, null],
[X, SHammer, null],
[null, null, null]]);

// Wood Barrel
recipes.addShaped(<ImmersiveEngineering:woodenDevice:6>, [
[null, Slab, null],
[Saw, Chest, SHammer],
[null, X, null]]);

// Wood Fence
recipes.addShaped(<ImmersiveEngineering:woodenDecoration:1> * 3, [
[Fence, Fence, null],
[X, Fence, null],
[null, null, null]]);

// Wood Slab
recipes.addShaped(TSlab * 3, [
[Slab, Slab, null],
[X, Slab, null],
[null, null, null]]);

// Wood Scaffold
recipes.addShaped(<ImmersiveEngineering:woodenDecoration:5> * 6, [
[Plank, Plank, Plank],
[SHammer, Fence, Saw],
[Fence, X, Fence]]);

// Wood Hanger
recipes.addShaped(<ImmersiveEngineering:woodenDecoration:6> * 4, [
[Plank, Fence, Fence],
[Saw, X, Fence],
[null, SHammer, Plank]]);

// Wood Stick
recipes.addShaped(<ImmersiveEngineering:material:0> * 8, [
[Stick, Stick, Stick],
[Stick, X, Stick],
[Stick, Stick, Stick]]);

// Wood Plank
recipes.addShaped(<ImmersiveEngineering:treatedWood> * 5, [
[Plank, Plank, Plank],
[Plank, X, Plank],
[null, null, null]]);
// }
//- Wood Plank from other version
recipes.addShapeless(<ImmersiveEngineering:treatedWood>, [<ImmersiveEngineering:treatedWood:2>]);

// Tough Fabric
recipes.remove(<ImmersiveEngineering:material:4>);
recipes.addShaped(<ImmersiveEngineering:material:4> * 6, [
[HempWire, HempWire, HempWire],
[HempWire, WireCutter, HempWire],
[HempWire, HempWire, HempWire]]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.loom", false, 16, 40, [10000], [Hemp * 4], [<ImmersiveEngineering:material:4> * 3] );

// Improved wind blade
// --- Fine

// Revolver Barrel
recipes.remove(<ImmersiveEngineering:material:7>);
recipes.addShaped(<ImmersiveEngineering:material:7>, [
[null, HHammer, null],
[PipeSteel, PipeSteel, PipeSteel],
[null, File, null]]);

mods.MTUtilsGT.addCustomRecipe("gt.recipe.welder", false, 32, 60, [10000], [<gregtech:gt.multitileentity:26141> * 2, <gregapi:gt.integrated_circuit:0> *0], [<ImmersiveEngineering:material:7>]);

//------------------------------------------------------------

// mods.immersiveengineering.ArcFurnace.addRecipe(itemOut, itemIn, slagOut, tTime, RFt, #additives[], "nei")
// mods.immersiveengineering.BlastFurnace.addRecipe(itemOut, itemIn, tTime, #slag)
// mods.immersiveengineering.BottlingMachine.addRecipe(itemOut, itemIn, fluidIn)
// mods.immersiveengineering.CokeOven.addRecipe(itemOut, tCreostoe, itemIn, tTime)
// mods.immersiveengineering.Crusher.addRecipe(itemOut, itemIn, RF; #itemSpare, fC)
// mods.immersiveengineering.Fermenter.addRecipe(itemOut, fluidOut, itemIn, tTime)
// mods.immersiveengineering.MetalPress.addRecipe(itemOut, itemIn, itemMold, RF, #tDisplaySize)
// mods.immersiveengineering.Refinery.addRecipe(fluidOut, fluidIn1, fluidIn2)
// mods.immersiveengineering.Squeezer.addRecipe(itemOut, fluidOut, itemIn, tTime)

var cokeOven	= <ImmersiveEngineering:stoneDecoration:1>;
var blastFurn	= <ImmersiveEngineering:stoneDecoration:2>;
// ImmersiveEngineering:stoneDecoration:6, Reinforced Blast Brick
// ImmersiveEngineering:metalDevice2:7, Metal Barrel
// ImmersiveEngineering:metalDevice2:9, Redstone Breaker
// ImmersiveEngineering:metalDevice2:10, Charging Station
// ImmersiveEngineering:metalDevice2:11, Blast Furnace Preheater
// ImmersiveEngineering:metalDecoration:4, Radiator Block
// ImmersiveEngineering:metalDecoration:5, Heavy Engineering Block
// ImmersiveEngineering:metalDecoration:6, Generator Block
// ImmersiveEngineering:metalDecoration:7, Light Engineering Block
// ImmersiveEngineering:metalMultiblock:2, Industrial Squeezer
// ImmersiveEngineering:metalMultiblock:3, Fermenter
// ImmersiveEngineering:stoneDecoration:0, Hempcrete


// balance recipes across types
recipes.remove(cokeOven);
recipes.addShaped(cokeOven, [[clay, brick, clay],[brick, sandSt, brick],[clay, brick, clay]]);

recipes.remove(blastFurn);
recipes.addShaped(blastFurn *2, [[nBrick, brick, nBrick],[brick, <gregtech:gt.meta.dustSmall:8211>, brick],[nBrick, brick, nBrick]]);

recipes.addShapeless(<ImmersiveEngineering:stoneDecoration:6>, [<ore:plateAnyIronSteel>, <Railcraft:machine.alpha:12>]);

mods.immersiveengineering.BlastFurnace.addFuel(<RotaryCraft:rotarycraft_item_compacts:8>, 3200);
mods.immersiveengineering.BlastFurnace.addFuel(<Railcraft:fuel.coke>, 3200);
mods.immersiveengineering.BlastFurnace.addFuel(<gregtech:gt.meta.gem:8349>, 3200);
mods.immersiveengineering.BlastFurnace.addFuel(<gregtech:gt.meta.crushedPurified:8349>, 4000);
mods.immersiveengineering.BlastFurnace.addFuel(<gregtech:gt.meta.crushedCentrifuged:8349>, 4266);
mods.immersiveengineering.BlastFurnace.addFuel(<gregtech:gt.meta.dust:8349>, 3200);
mods.immersiveengineering.BlastFurnace.addFuel(<gregtech:gt.meta.dustSmall:8349>, 800);
mods.immersiveengineering.BlastFurnace.addFuel(<gregtech:gt.meta.dustTiny:8349>, 355);
mods.immersiveengineering.BlastFurnace.addFuel(<gregtech:gt.meta.dustDiv72:8349>, 45);

for alDust in <ore:dustAluminum>.items {
	mods.immersiveengineering.Crusher.removeRecipe(alDust);
}
mods.immersiveengineering.Crusher.addRecipe(<ImmersiveEngineering:metal:11>, <ore:ingotAluminium>, 300);
mods.immersiveengineering.Crusher.addRecipe(<ImmersiveEngineering:metal:11>, <ore:plateAluminium>, 300);

mods.immersiveengineering.Crusher.removeRecipe(<gregtech:gt.meta.ingot:140>); // exploit making RoC silicon

// Make slagcrete easier
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 16, 16, [10000], [<ImmersiveEngineering:material:13>*2, <minecraft:gravel>, <minecraft:clay_ball>], [<liquid:water> *250], [null] as ILiquidStack[], [<ImmersiveEngineering:stoneDecoration:4> *6]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 16, 16, [10000], [<ImmersiveEngineering:material:13>, <gregtech:gt.meta.dustSmall:8510>*2, <gregtech:gt.meta.dustSmall:8276>*2], [<liquid:water> *125], [null] as ILiquidStack[], [<ImmersiveEngineering:stoneDecoration:4> *3]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 16, 16, [10000], [<ImmersiveEngineering:material:13>*2, <minecraft:gravel>, <gregtech:gt.multiitem.food:12310>], [<liquid:water> *250], [null] as ILiquidStack[], [<ImmersiveEngineering:stoneDecoration:4> *6]);
mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", true, 16, 16, [10000], [<ImmersiveEngineering:material:13>, <gregtech:gt.meta.dustSmall:8510>*2, <gregtech:gt.meta.dustSmall:8276>*2], [<liquid:water> *125], [null] as ILiquidStack[], [<ImmersiveEngineering:stoneDecoration:4> *3]);

// Bullets
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:740>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:8717>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:2>, [<gregtech:gt.meta.bulletGtMedium:820>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:0>, [<gregtech:gt.meta.bulletGtMedium:0>]);

recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:8674>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:9>, [<gregtech:gt.meta.bulletGtMedium:8676>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:8675>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:8710>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:8634>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:9>, [<gregtech:gt.meta.bulletGtMedium:770>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:920>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:8681>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:8638>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:3>, [<gregtech:gt.meta.bulletGtMedium:8635>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:9>, [<gregtech:gt.meta.bulletGtMedium:8631>]);
recipes.addShapeless(<ImmersiveEngineering:bullet:9>, [<gregtech:gt.meta.bulletGtMedium:8632>]);


//// Excavator ********************** ////
//MineralString, MineralWeight, FailChance, OreStringArray, OreChanceArray, #DimensionIDArray, #isBlacklist 
// mods.immersiveengineering.Excavator.addMineral("Sediment", 30, 15, ["sand", "sandstone"], [50, 15], [0, 1], false);
//MineralString
// mods.immersiveengineering.Excavator.removeMineral("Bauxite");
//MineralString + OreString, Chance
// mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("oreNickel", 0.75);
//MineralString + OreString
// mods.immersiveengineering.Excavator.getMineral("Magnetite").removeOre("oreGold");

// Silver, Galena, Bauxite, Platinum, Cassiterite, Wolframite, Coal, Lead, Iron, Pyrite, Gold, Magnetite, Lapis, Copper, Quartzite, Nickel

# These actually WORK!!!!
var bauxVein	= mods.immersiveengineering.Excavator.getMineral("Bauxite");
var casserVein	= mods.immersiveengineering.Excavator.getMineral("Cassiterite");
var coalVein	= mods.immersiveengineering.Excavator.getMineral("Coal");
var coppVein	= mods.immersiveengineering.Excavator.getMineral("Copper");
var galenaVein	= mods.immersiveengineering.Excavator.getMineral("Galena");
var goldVein	= mods.immersiveengineering.Excavator.getMineral("Gold");
var ironVein	= mods.immersiveengineering.Excavator.getMineral("Iron");
var lapVein		= mods.immersiveengineering.Excavator.getMineral("Lapis");
// var leadVein	= mods.immersiveengineering.Excavator.getMineral("Lead");
// var magVein		= mods.immersiveengineering.Excavator.getMineral("Magnetite");
var nickVein	= mods.immersiveengineering.Excavator.getMineral("Nickel");
var platVein	= mods.immersiveengineering.Excavator.getMineral("Platinum");
var pyriteVein	= mods.immersiveengineering.Excavator.getMineral("Pyrite");
var quarVein	= mods.immersiveengineering.Excavator.getMineral("Quartzite");
var silVein		= mods.immersiveengineering.Excavator.getMineral("Silver");
// var uraVein		= mods.immersiveengineering.Excavator.getMineral("Uranium");	// poof? -- gT meta.ore.*.* are dicted to "oreVanillastone*" :: 6.07.12
var wolfVein	= mods.immersiveengineering.Excavator.getMineral("Wolframite");

<ore:oreRutile>.addAll(<ore:oreVanillastoneRutile>);
<ore:oreZirconium>.addAll(<ore:oreVanillastoneZirconium>);
<ore:oreCassiterite>.addAll(<ore:oreVanillastoneCassiterite>);
<ore:oreHuebnerite>.addAll(<ore:oreVanillastoneHuebnerite>);
<ore:oreAnthracite>.addAll(<ore:oreVanillastoneAnthracite>);
<ore:oreTetrahedrite>.addAll(<ore:oreVanillastoneTetrahedrite>);
<ore:oreStibnite>.addAll(<ore:oreVanillastoneStibnite>);
<ore:oreChalcopyrite>.addAll(<ore:oreVanillastoneChalcopyrite>);
<ore:oreSulfur>.addAll(<ore:oreVanillastoneSulfur>);
<ore:oreGalena>.addAll(<ore:oreVanillastoneGalena>);
<ore:oreMalachite>.addAll(<ore:oreVanillastoneMalachite>);
<ore:oreIlmenite>.addAll(<ore:oreVanillastoneIlmenite>);
<ore:oreSodalite>.addAll(<ore:oreVanillastoneSodalite>);
<ore:oreLazurite>.addAll(<ore:oreVanillastoneLazurite>);
<ore:oreFerrovanadium>.addAll(<ore:oreVanillastoneFerrovanadium>);
<ore:oreArsenic>.addAll(<ore:oreVanillastoneArsenic>);
<ore:oreCobalt>.addAll(<ore:oreVanillastoneCobalt>);
<ore:oreIridium>.addAll(<ore:oreVanillastoneIridium>);
<ore:orePyrite>.addAll(<ore:oreVanillastonePyrite>);
<ore:oreArsenopyrite>.addAll(<ore:oreVanillastoneArsenopyrite>);
<ore:oreSphalerite>.addAll(<ore:oreVanillastoneSphalerite>);
<ore:oreQuartzite>.addAll(<ore:oreQuartziteQuartzite>);
<ore:oreBarite>.addAll(<ore:oreQuartziteBarite>);
<ore:oreBromargyrite>.addAll(<ore:oreVanillastoneBromargyrite>);
<ore:oreManganese>.addAll(<ore:oreVanillastoneManganese>);
<ore:oreScheelite>.addAll(<ore:oreVanillastoneScheelite>);
<ore:oreWolframite>.addAll(<ore:oreVanillastoneWolframite>);
<ore:oreTungstate>.addAll(<ore:oreVanillastoneTungstate>);
<ore:oreRussellite>.addAll(<ore:oreVanillastoneRussellite>);
<ore:oreMolybdenum>.addAll(<ore:oreVanillastoneMolybdenum>);
<ore:oreBastnasite>.addAll(<ore:oreVanillastoneBastnasite>);

bauxVein.removeOre("oreAluminum");
bauxVein.removeOre("oreAluminium");
bauxVein.removeOre("oreTitanium");
bauxVein.addOre("oreBauxite", 0.90);
bauxVein.addOre("oreRutile", 0.08);
bauxVein.addOre("oreZirconium", 0.02);

casserVein.addOre("oreCassiterite", 1);
casserVein.addOre("oreHuebnerite", 0.2);

coalVein.addOre("oreLignite", 0.40);
coalVein.addOre("oreAnthracite", 0.10);
coalVein.addOre("oreOilshale", 0.10);

coppVein.addOre("oreTetrahedrite", 0.6);
coppVein.addOre("oreStibnite", 0.20);
coppVein.addOre("oreChalcopyrite", 0.15);

galenaVein.addOre("oreGalena", 0.9);

goldVein.addOre("oreRedstone", 0.05);

ironVein.addOre("oreMalachite", 0.15);
ironVein.addOre("oreIlmenite", 0.10);

lapVein.removeOre("oreSulfur");
lapVein.removeOre("oreSulphur");
lapVein.addOre("oreSodalite", 0.2);
lapVein.addOre("oreLazurite", 0.2);

nickVein.addOre("oreArsenic", 0.05);
nickVein.addOre("oreCobalt", 0.05);

platVein.addOre("oreVanillastoneOsmiumElemental", 0.1);
platVein.addOre("oreVanillastonePlatinumGroupSludge", 0.1);

pyriteVein.addOre("orePyrite", 1);
pyriteVein.addOre("oreArsenopyrite", 0.3);
pyriteVein.addOre("oreChalcopyrite", 0.4);
pyriteVein.addOre("oreSphalerite", 0.3);

quarVein.addOre("oreQuartzite", 0.2);
quarVein.addOre("oreBarite", 0.1);

silVein.addOre("oreBromargyrite", 0.05);

mods.immersiveengineering.Excavator.addMineral("Uranite", 10, 50, ["orePitchblende", "oreUranium", "oreLead", "oreThorium", "oreVanillastonePlutonium"], [0.80, 0.55, 0.30, 0.25, 0.10]);
// uraVein.addOre("orePitchblende", 0.8);
// uraVein.addOre("oreThorium", 0.25);

wolfVein.removeOre("oreTungsten");
wolfVein.addOre("oreScheelite", 0.20);
wolfVein.addOre("oreWolframite", 0.10);
wolfVein.addOre("oreTungstate", 0.10);
wolfVein.addOre("oreRussellite", 0.10);
wolfVein.addOre("oreMolybdenum", 0.025);
wolfVein.addOre("oreBastnasite", 0.025);

mods.immersiveengineering.Excavator.addMineral("Suffering", 100, 20, ["oreNetherQuartz", "stoneNetherrack", "soulsand", "oreNetherrackArsenopyrite", "oreNetherrackSphalerite", "oreNetherrackCelestine", "oreNetherrackVyroxeres", "oreNetherrackVulcanite", "oreNetherrackThulium", "oreNetherrackTechnetium", "orenetherrackPotassiumNitrate", "glowstone", "oreNetherrackShadowIron"], [0.15, 0.20, 0.20, 0.05, 0.05, 0.075, 0.01, 0.01, 0.02, 0.05, 0.05, 0.10, 0.02], [-1013, -1006, -1], false);

mods.immersiveengineering.Excavator.addMineral("Chalk", 10, 5, ["oreLimestoneAsbestos", "oreLimestoneSoapstone", "oreLimestoneTalc", "oreLimestoneGypsum", "oreLimestoneGlauconite", "oreLimestoneBentonite", "oreLimestoneMagnesite", "oreLimestoneZeolite", "oreLimestoneBorax", "oreLimestoneIodineSalt", "oreLimestoneChalk", "oreLimestoneKaolinite", "oreLimestoneVermiculite"], [0.05, 0.10, 0.05, 0.05, 0.10, 0.05, 0.05, 0.10, 0.08, 0.05, 0.12, 0.10, 0.10], [-1025, -1024, -1013, -1012, -1010, -1009, -1005, -45, -44, -42, -41, -40, -30, -28, -27, -26, -19, -1, 1], true);

mods.immersiveengineering.Excavator.addMineral("Magical", 10, 25, ["oreAmber", "oreChimerite", "oreCinnabar", "oreInfusedAir", "oreInfusedEarth", "oreInfusedEntropy", "oreInfusedFire", "oreInfusedOrder", "oreInfusedWater", "oreMoonstone", "oreSunstone"], [0.19, 0.10, 0.15, 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, 0.04, 0.04], [-1018, -1009, -42, -28, -19, -1, 1, 7, 17, 66], false); 

mods.immersiveengineering.Excavator.addMineral("Animeyese", 5, 30, ["oreEndstoneCheese", "oreEndstoneDilithium", "oreEndstoneDuraniumHexaastatide", "oreEndstoneLemurite", "oreEndstoneMeteoricIron", "oreEndstoneNaquadah", "oreEndstoneOrichalcum", "oreEndstoneSelenium", "oreEndstoneTrinium", "oreEndstoneTritaniumHexaiodide", "oreEndstoneVibranium"], [0.15, 0.05, 0.10, 0.15, 0.10, 0.05, 0.05, 0.10, 0.05, 0.10, 0.005], [-1018, -1009, -1006, -42, -30, -29, 1, 7, 17], false);

mods.immersiveengineering.Excavator.addMineral("Adamant", 10, 50, ["oreKimberliteIlmenite", "oreKimberliteDiamond", "oreKimberliteAdamantine", "oreKimberliteFerberite", "oreKimberliteTantalite", "oreKimberliteAtlarus", "oreKimberliteDraconium", "oreKimberliteGraphene"], [0.25, 0.05, 0.10, 0.25, 0.15, 0.05, 0.05, 0.10], [-1017, -1012, -1011, -42, -29, -19, 1, 66], false);
