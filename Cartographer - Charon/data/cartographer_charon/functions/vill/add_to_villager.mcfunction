#00000001-0000-0007-0000-001b0000000b
data modify storage cartographer_charon:vil slot.maxUses set value 1
data modify storage cartographer_charon:vil slot.rewardExp set value 0b
data modify storage cartographer_charon:vil slot.buy.id set value "minecraft:gold_nugget"
execute store result storage cartographer_charon:vil slot.buy.Count byte 1 if data storage cartographer_charon:bundle bundle.tag.Items[]
data modify storage cartographer_charon:vil slot.sell set from storage cartographer_charon:bundle bundle

data modify entity 00000001-0000-0007-0000-001b0000000b Offers.Recipes prepend from storage cartographer_charon:vil slot

