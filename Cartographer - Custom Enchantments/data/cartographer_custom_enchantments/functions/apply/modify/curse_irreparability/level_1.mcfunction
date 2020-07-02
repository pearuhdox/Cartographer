data modify block 0 0 0 Items[0].tag merge value {RepairCost:60}
data modify block 0 0 0 Items[0].tag.display.Lore prepend value "{\"text\":\"Curse of Irreparability\",\"color\":\"red\",\"italic\":false}"

function cartographer_core:helper/items/return_item
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 2