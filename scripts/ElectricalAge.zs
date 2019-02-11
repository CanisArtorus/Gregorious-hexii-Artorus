#modloaded eln gregapi_post

var plank	= <ore:plankWood>;
var rs		= <minecraft:redstone>;
var redDye	= <ore:dyeRed>;
var iron	= <ore:ingotAnyIron>;

var sigCable	= <Eln:Eln.SixNode:2048>;
var alloyDust	= <Eln:Eln.sharedItem:9>;
var alloyIngot	= <Eln:Eln.sharedItem:519>;
var alloyPlate	= <Eln:Eln.sharedItem:7691>;

// Removals
var disText = format.red("This item is DISABLED!!");
furnace.remove(<Eln:Eln.sharedItem:4097>);	//Rubber
recipes.remove(<Eln:Eln.sharedItem:7680>);	//Cheap Chip
recipes.remove(<Eln:Eln.sharedItem:7681>);	//Advanced Chip
recipes.remove(<Eln:Eln.SixNode:7424>);	//sap bag
<Eln:Eln.SixNode:7424>.addTooltip(disText);
<Eln:Eln.sharedItem:4096>.addTooltip(disText);	// resin ball

// Oredict help
// Analog Gauge
recipes.addShaped(<Eln:Eln.SixNode:6528>, [[plank, plank, plank],[rs,iron,redDye],[plank, sigCable, plank]]);
// signal viewer
recipes.addShaped(<Eln:Eln.SixNode:6536>, [[null, plank, null],[plank, <minecraft:redstone_torch>, plank],[null, sigCable, null]]);


// dasmac-like alloy; process nuclear tough-alloy like.
for dC in <ore:dustAnyCoalCarbon>.items {
  for dFe in <ore:dustAnyIron>.items {
    for dW in <ore:dustTungsten>.items {
	  mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", false, 128, 16, [10000], [dFe *2, dW, dC], [alloyDust]);
  }}
  mods.MTUtilsGT.addCustomRecipe("gt.recipe.mixer", false, 72, 50, [10000], [dC], [<liquid:molten.iron>*288, <liquid:molten.tungsten>*144, <liquid:water>*125], [<liquid:steam>*5000], [alloyIngot]);
}

mods.MTUtilsGT.addCustomRecipe("gt.recipe.rollingmill", false, 16, 256, [10000], [alloyIngot], [alloyPlate]);
