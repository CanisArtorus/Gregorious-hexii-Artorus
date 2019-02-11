#modloaded atum Thaumcraft gregapi_post

import mods.thaumcraft.Arcane;


Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:1>, "ordo 2", [<atum:item.loot:68>]);
Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:0>, "ordo 2", [<atum:item.loot:36>]);
Arcane.addShapeless("IT_APPRENTICE_ARTIFICING", <Thaumcraft:ItemBaubleBlanks:0>, "ordo 2", [<atum:item.loot:100>]);

recipes.addShapeless(<gregtech:gt.meta.ring:790> *3, [<atum:item.loot:68>, <ore:craftingToolSaw>]);
recipes.addShapeless(<gregtech:gt.meta.ring:470> *3, [<atum:item.loot:36>, <ore:craftingToolSaw>]);
