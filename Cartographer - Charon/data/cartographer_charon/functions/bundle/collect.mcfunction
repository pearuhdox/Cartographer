function inv:internal/reset
function inv:save
data modify storage cartographer_charon:player inv set value []

data modify storage cartographer_charon:player inventory_test set value []
data modify storage cartographer_charon:player inventory_test set from entity @s Inventory

data modify storage cartographer_charon:player returning_items set value []

scoreboard players set $bundle_slot dt.var -1000
execute store result score $bundle_slot dt.var run data get storage cartographer_charon:player inventory_test[{id:"minecraft:bundle",tag:{DeathBundle:1b}}].Slot

function cartographer_charon:bundle/rec_inv
data modify storage inv:main inv.all set from storage cartographer_charon:player inv
function inv:load