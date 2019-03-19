////----------------------------------------------------------------------------------------
// --- Created by DreamMasterXXL ---
// --- Edited by *error user name found* ---


// --- Importing Stuff ---
mods.chisel.Groups.addGroup("basalt");

// --- Variables ---

val Saw = <ore:craftingToolSaw>;//--10
val HHammer = <ore:craftingToolHardHammer>;//--12
val SHammer = <ore:craftingToolSoftHammer>;//--14
val Wrench = <ore:craftingToolWrench>;//--16
val File = <ore:craftingToolFile>;//--18
val Screwdriver = <ore:craftingToolScrewdriver>;//--22
// val Mortar = <ore:craftingToolMortar>;//--24
val WireCutter = <ore:craftingToolWireCutter>;//--26
val Knife = <ore:craftingToolKnife>;//--34
val Chisel = <ore:craftingToolChisel>;//--48

val IronChisel = <chisel:chisel>;
val ObsidianChisel = <chisel:obsidianChisel>;
val DiamondChisel = <chisel:diamondChisel>;
val BottledCloud = <chisel:cloudinabottle>;

val IronRod = <ore:stickAnyIron>;
val SteelRod = <ore:stickAnyIronSteel>;
val ObsidianStick = <ore:stickObsidian>;
val TinyQuartzPile = <ore:dustTinyQuartzite>;
val EmptyBottle = <minecraft:glass_bottle>;

var gtLimestone = <gregtech:gt.stone.limestone:1>;
var gtMarble = <gregtech:gt.stone.marble:1>;

// --- Removing Recipes ---

// furnace.remove(<chisel:concrete>);
// furnace.remove(<minecraft:gravel>);

// --- Cloud In A Bottle
recipes.remove(BottledCloud);

// --- Ball Of Moss
// -- val BallOMoss = <chisel:ballomoss>;
// -- recipes.remove(BallOMoss);

// --- Smashing Rock
// -- recipes.remove(<chisel:smashingrock>);

// --- Iron Chisel
recipes.remove(IronChisel);

// --- Obsidian Chisel
recipes.remove(ObsidianChisel);

// --- Diamond Chisel
recipes.remove(DiamondChisel);

// --- Adding Back Recipes ---


// --- IronChisel
IronChisel.displayName = "Wrought Chisel";
Chisel.add(IronChisel);
recipes.addShaped(IronChisel, [
[null, null, <ore:toolHeadChiselWroughtIron>],
[null, <ore:stickWood>, null],
[<ore:slabWood>, null, null]]);

// --- Obsidian Chisel
ObsidianChisel.displayName = "Titanium Chisel";
Chisel.add(ObsidianChisel);
recipes.addShaped(ObsidianChisel, [
[null, null, <ore:toolHeadChiselTitanium>],
[null, <ore:stickWood>, null],
[<ore:slabWood>, null, null]]);

// --- Diamond Chisel
DiamondChisel.displayName = "Tungstensteel Chisel";
Chisel.add(DiamondChisel);
recipes.addShaped(DiamondChisel, [
[null, null, <ore:toolHeadChiselTungstensteel>],
[null, <ore:stickSteel>, null],
[<ore:slabWood>, null, null]]);


// --- Cloud In A Bottle
recipes.addShaped(BottledCloud, [
[TinyQuartzPile, TinyQuartzPile, TinyQuartzPile],
[TinyQuartzPile, EmptyBottle, TinyQuartzPile],
[TinyQuartzPile, TinyQuartzPile, TinyQuartzPile]]);


// -- OD Chisel
<ore:stoneConcrete>.addAll(<ore:concrete>);
<ore:concrete>.mirror(<ore:stoneConcrete>);

<ore:netherrack>.add(<chisel:netherrack:*>);
<ore:stoneNetherrack>.add(<chisel:netherrack:*>);

<ore:obsidian>.add(<chisel:obsidian:*>);
<ore:stoneObsidian>.add(<chisel:obsidian:*>);
<ore:obsidian>.add(<chisel:obsidian_snakestone:*>);
<ore:stoneObsidian>.add(<chisel:obsidian_snakestone:*>);

<ore:glowstone>.add(<chisel:glowstone:*>);
<ore:stoneGlowstone>.mirror(<ore:glowstone>);

<ore:stoneBricks>.add(<chisel:stonebricksmooth:*>);
// -- There are more ODs for specific variations

<ore:blockSilver>.add(<chisel:silverblock:*>);
<ore:blockIngotSilver>.add(<chisel:silverblock:*>);

<ore:blockGold>.add(<chisel:gold_block:*>);
<ore:blockIngotGold>.add(<chisel:gold_block:*>);
<ore:blockGold>.add(<chisel:gold2:*>);
<ore:blockIngotGold>.add(<chisel:gold2:*>);

<ore:blockLead>.add(<chisel:leadblock:*>);
<ore:blockIngotLead>.add(<chisel:leadblock:*>);

<ore:limestone>.add(<chisel:limestone:*>);
<ore:stoneLimestone>.add(<chisel:limestone:*>);
<ore:blockLimestone>.add(<chisel:limestone:*>);

<ore:plankWood>.add(<chisel:oak_planks:*>);
<ore:plankWood>.add(<chisel:spruce_planks:*>);
<ore:plankWood>.add(<chisel:birch_planks:*>);
<ore:plankWood>.add(<chisel:jungle_planks:*>);
<ore:plankWood>.add(<chisel:acacia_planks:*>);
<ore:plankWood>.add(<chisel:dark_oak_planks:*>);

// -- iron bars -- no OD
// -- dirt -- no OD
// -- bookshelf -- no OD

<ore:blockPackedIce>.add(<chisel:packedice:*>);
<ore:craftingChest>.add(<chisel:present:*>);

// --- Chisel Group basalt ---

for thing in <ore:stoneBasalt>.items {
mods.chisel.Groups.addVariation("basalt", thing);
}

// --- --- --- ---
// Stop material changing cobblestone
mods.chisel.Groups.removeGroup("cobblestone");
mods.chisel.Groups.addGroup("stoneCobble");
// mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:0>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:1>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:2>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:3>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:4>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:5>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:6>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:7>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:8>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:9>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:10>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:11>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:12>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:13>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:14>);
mods.chisel.Groups.addVariation("stoneCobble", <chisel:cobblestone:15>);
mods.chisel.Groups.addVariation("stoneCobble", <minecraft:cobblestone>);

// mods.chisel.Groups.removeVariation(<gregtech:gt.block.concrete:0>);	# errors to client (works anyway)
mods.chisel.Groups.addVariation("concrete", <gregtech:gt.block.concrete:7>);

// Stairs
recipes.addShaped(<chisel:limestone_stairs.0> *4, [[gtLimestone, null, null], [gtLimestone, gtLimestone, null],[gtLimestone, gtLimestone, gtLimestone]]);
recipes.addShaped(<chisel:marble_stairs.0> *4, [[gtMarble, null, null],[gtMarble, gtMarble, null],[gtMarble, gtMarble, gtMarble]]);
