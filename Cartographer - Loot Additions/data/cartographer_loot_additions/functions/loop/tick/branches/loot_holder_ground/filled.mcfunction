execute unless entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:placed/despawn
execute if entity @a[gamemode=creative,distance=..10] unless data entity @s Item.id run function cartographer_loot_additions:placed/revert

#Randomize if nearby player
execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..48] as @s[tag=random] run function cartographer_loot_additions:loot/randomize

#Creeper Check
function cartographer_loot_additions:loop/tick/branches/explosion_tamper

#Frames with air beneath are destroyed.
execute if block ~ ~-1 ~ air run function cartographer_loot_additions:placed/despawn

#function cartographer_loot_additions:placed/check_floating