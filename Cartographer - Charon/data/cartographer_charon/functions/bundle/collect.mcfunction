playsound minecraft:entity.item_frame.remove_item player @a[distance=..8] ~ ~ ~ 2 0.5
playsound minecraft:entity.allay.item_given player @a[distance=..8] ~ ~ ~ 4 1
playsound minecraft:entity.warden.sonic_charge player @a[distance=..8] ~ ~ ~ 0.3 2
playsound minecraft:item.totem.use player @a[distance=..8] ~ ~ ~ 0.15 1.5

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