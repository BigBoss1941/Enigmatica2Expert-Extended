#priority -2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

function addForAxes(input as IIngredient, output as IItemStack) as void {
  for axe, value in scripts.do.wood_axing.axes {
    scripts.jei.crafting_hints.add1to1(input, output * value, axe);
  }
}

addForAxes(<ore:logWood>, <ore:plankWood>.firstItem);

for oreName, output in scripts.do.wood_axing.oreStick {
  addForAxes(oreDict.get(oreName), output);
}
