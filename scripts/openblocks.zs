# by Canis Artorus

import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;

val enderPearl = <minecraft:ender_pearl>;
val glasspane = <minecraft:glass_pane:*>;
var comcube = <chisel:valentines:1>;
// val heart = <HardcoreQuesting:hearts>;
// var heart = <betterquesting:extra_life>;
var HHammer = <ore:craftingToolHardHammer>;
val nanomachines = <OpenComputers:item:107>;
val obsidian = <minecraft:obsidian:*>;
val plateAnyIron = <ore:plateAnyIronOrSteel>;
val ringAnyIron = <ore:ringAnyIronOrSteel>;
val ringCopper = <ore:ringAnyCopper>;
val ringSilver = <ore:ringSilver>;
val ceramicFunnel = <gregtech:gt.multitileentity:32723>;
val plasticFunnel = <gregtech:gt.multitileentity:32724>;
val ceramicTap = <gregtech:gt.multitileentity:32728>;
val plasticTap = <gregtech:gt.multitileentity:32729>;
var ULVmotor = <gregtech:gt.multiitem.technological:12000>;
val vaneAnyIron = <ore:stickLongAnyIronOrSteel>;
val wool = <minecraft:wool:*>;
var wrench = <ore:craftingToolWrench>;

var hopper = <ore:caHopper>;

hopper.add(<minecraft:hopper>);
/*
// Disable the dumb stuff -- by config
recipes.remove(<OpenBlocks:canvas:*>);
recipes.remove(<OpenBlocks:canvasglass:*>);
recipes.remove(<OpenBlocks:crayonGlasses>);
recipes.remove(<OpenBlocks:cursor>);
recipes.remove(<OpenBlocks:drawingtable>);
recipes.remove(<OpenBlocks:epicEraser>);
recipes.remove(<OpenBlocks:genericUnstackable>);
recipes.remove(<OpenBlocks:imaginary:*>);
recipes.remove(<OpenBlocks:paintBrush:*>);
recipes.remove(<OpenBlocks:paintcan:*>);
recipes.remove(<OpenBlocks:paintmixer>);
recipes.remove(<OpenBlocks:pencilGlasses>);
recipes.remove(<OpenBlocks:seriousGlasses>);
recipes.remove(<OpenBlocks:stencil:*>);
recipes.remove(<OpenBlocks:tastyClay>);
recipes.remove(<OpenBlocks:technicolorGlasses>);
*/

// tweak the OP things.
recipes.remove(<OpenBlocks:fan>);
recipes.addShapeless(<OpenBlocks:fan> * 4, [<RotaryCraft:rotarycraft_item_enginecraft:0>, ULVmotor, <minecraft:stone_slab:*>]);
recipes.addShapeless(<OpenBlocks:fan> * 3, [<ore:rotorTinAlloy>, ULVmotor, <minecraft:stone_slab:*>]);
recipes.addShapeless(<OpenBlocks:fan> * 4, [<ore:rotorAnyIron>, ULVmotor, <minecraft:stone_slab:*>]);
recipes.addShapeless(<OpenBlocks:fan> * 5, [<ore:rotorAnyIronSteel>, ULVmotor, <minecraft:stone_slab:*>]);

recipes.remove(<OpenBlocks:heal>);
/*recipes.addShapedMirrored(<OpenBlocks:heal>, [
	[nanomachines, comcube, <minecraft:ghast_tear>],
	[comcube, heart, comcube],
	[<minecraft:speckled_melon>,comcube, nanomachines]]);
*/
recipes.remove(<OpenBlocks:luggage>);
recipes.addShapeless(<OpenBlocks:luggage>, [comcube, <Thaumcraft:TrunkSpawner>, <ore:gemVinteum>]);

recipes.remove(<OpenBlocks:sonicglasses>);
recipes.addShaped(<OpenBlocks:sonicglasses>, [
	[<minecraft:bowl>, wrench, <minecraft:bowl>],
	[<ore:stickAnyIron>, <minecraft:iron_helmet>, <ore:stickAnyIron>],
	[<ore:casingSmallObsidian>, <ore:gt:circuit1>, <ore:casingSmallObsidian>]]);

recipes.remove(<OpenBlocks:tank>);
recipes.addShaped(<OpenBlocks:tank>*2, [
	[obsidian, ceramicFunnel, obsidian],
	[glasspane, glasspane, glasspane],
	[obsidian, ceramicTap, obsidian] ]);
recipes.addShaped(<OpenBlocks:tank>*2, [
	[obsidian, ceramicFunnel, obsidian],
	[glasspane, glasspane, glasspane],
	[obsidian, plasticTap, obsidian] ]);
recipes.addShaped(<OpenBlocks:tank>*2, [
	[obsidian, plasticFunnel, obsidian],
	[glasspane, glasspane, glasspane],
	[obsidian, ceramicTap, obsidian] ]);
recipes.addShaped(<OpenBlocks:tank>*2, [
	[obsidian, plasticFunnel, obsidian],
	[glasspane, glasspane, glasspane],
	[obsidian, plasticTap, obsidian] ]);
	
recipes.remove(<OpenBlocks:vacuumhopper>);
recipes.addShapeless(<OpenBlocks:vacuumhopper>, 
	[obsidian, <minecraft:ender_eye>, <Thaumcraft:blockChestHungry>, <Thaumcraft:ItemZombieBrain>]);

recipes.remove(<OpenBlocks:elevator:*>);
recipes.remove(<OpenBlocks:elevator_rotating:*>);

recipes.addShaped(<OpenBlocks:elevator:12>, [
	[wool, ringSilver, wool],
	[wool, enderPearl, wool],
	[wool, ringCopper, wool] ]);
recipes.addShaped(<OpenBlocks:elevator_rotating:8>, [
	[ringAnyIron, wrench, ringAnyIron],
	[vaneAnyIron, HHammer, vaneAnyIron],
	[ringAnyIron, plateAnyIron, ringAnyIron] ]);

var wools = [<minecraft:wool:0>, <minecraft:wool:1>, <minecraft:wool:2>, <minecraft:wool:3>, <minecraft:wool:4>, <minecraft:wool:5>, <minecraft:wool:6>, <minecraft:wool:7>, <minecraft:wool:8>, <minecraft:wool:9>, <minecraft:wool:10>, <minecraft:wool:11>, <minecraft:wool:12>, <minecraft:wool:13>, <minecraft:wool:14>, <minecraft:wool:15>] as IItemStack[];
var elevatorColours = [<OpenBlocks:elevator:0>, <OpenBlocks:elevator:1>, <OpenBlocks:elevator:2>, <OpenBlocks:elevator:3>, <OpenBlocks:elevator:4>, <OpenBlocks:elevator:5>, <OpenBlocks:elevator:6>, <OpenBlocks:elevator:7>, <OpenBlocks:elevator:8>, <OpenBlocks:elevator:9>, <OpenBlocks:elevator:10>, <OpenBlocks:elevator:11>, <OpenBlocks:elevator:12>, <OpenBlocks:elevator:13>, <OpenBlocks:elevator:14>, <OpenBlocks:elevator:15>] as IItemStack[];
var rotatedColours = [<OpenBlocks:elevator_rotating:0>, <OpenBlocks:elevator_rotating:1>, <OpenBlocks:elevator_rotating:2>, <OpenBlocks:elevator_rotating:3>, <OpenBlocks:elevator_rotating:4>, <OpenBlocks:elevator_rotating:5>, <OpenBlocks:elevator_rotating:6>, <OpenBlocks:elevator_rotating:7>, <OpenBlocks:elevator_rotating:8>, <OpenBlocks:elevator_rotating:9>, <OpenBlocks:elevator_rotating:10>, <OpenBlocks:elevator_rotating:11>, <OpenBlocks:elevator_rotating:12>, <OpenBlocks:elevator_rotating:13>, <OpenBlocks:elevator_rotating:14>, <OpenBlocks:elevator_rotating:15>] as IItemStack[];
val allDyes = [<ore:dyeWhite>, <ore:dyeOrange>, <ore:dyeMagenta>, <ore:dyeLightBlue>, <ore:dyeYellow>, <ore:dyeLime>, <ore:dyePink>, <ore:dyeGray>, <ore:dyeLightGray>, <ore:dyeCyan>, <ore:dyePurple>, <ore:dyeBlue>, <ore:dyeBrown>, <ore:dyeGreen>, <ore:dyeRed>, <ore:dyeBlack>] as IIngredient[];

for i, dye in allDyes {
	recipes.addShapeless(elevatorColours[i], [<OpenBlocks:elevator:*>, dye]);
	recipes.addShapeless(rotatedColours[i], [<OpenBlocks:elevator_rotating:*>, dye]);
	recipes.addShaped(elevatorColours[i], [
		[wools[i], ringSilver, wools[i]],
		[wools[i], enderPearl, wools[i]],
		[wools[i], ringCopper, wools[i]]]);
}
/*
 9x dyeBlack	15
15x dyeBlue		11
12x dyeBrown	12
 7x dyeCyan		9
 7x dyeGray		7
 8x dyeGreen	13
 5x dyeLightBlue	3
 8x dyeLightGray	8
 5x dyeLime		5
 5x dyeMagenta	2
 5x dyeOrange	1
 5x dyePink		6
 5x dyePurple	10
 6x dyeRed		14
 6x dyeWhite	0
 7x dyeYellow	4
*/

// Oredict some things

recipes.addShaped(<OpenBlocks:itemDropper>, [
	[<ore:ingotIron>, <ore:cobblestone>, <ore:cobblestone>],
	[hopper, <ore:dustRedstone>, <ore:cobblestone>],
	[<ore:ingotIron>, <ore:cobblestone>, <ore:cobblestone>]]);
