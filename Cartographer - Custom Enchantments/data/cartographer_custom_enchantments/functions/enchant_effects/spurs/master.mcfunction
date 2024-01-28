execute if block ~ ~ ~ #cartographer_custom_enchantments:spurs run setblock ~ ~ ~ air replace
execute if block ~ ~1 ~ #cartographer_custom_enchantments:spurs run setblock ~ ~1 ~ air replace

execute if block ~1 ~ ~ #cartographer_custom_enchantments:spurs run setblock ~1 ~ ~ air replace
execute if block ~1 ~1 ~ #cartographer_custom_enchantments:spurs run setblock ~1 ~1 ~ air replace

execute if block ~ ~ ~1 #cartographer_custom_enchantments:spurs run setblock ~ ~ ~1 air replace
execute if block ~ ~1 ~1 #cartographer_custom_enchantments:spurs run setblock ~ ~1 ~1 air replace

execute if block ~-1 ~ ~ #cartographer_custom_enchantments:spurs run setblock ~-1 ~ ~ air replace
execute if block ~-1 ~1 ~ #cartographer_custom_enchantments:spurs run setblock ~-1 ~1 ~ air replace

execute if block ~ ~ ~-1 #cartographer_custom_enchantments:spurs run setblock ~ ~ ~-1 air replace
execute if block ~ ~1 ~-1 #cartographer_custom_enchantments:spurs run setblock ~ ~1 ~-1 air replace

execute if block ~1 ~ ~1 #cartographer_custom_enchantments:spurs run setblock ~1 ~ ~1 air replace
execute if block ~1 ~1 ~1 #cartographer_custom_enchantments:spurs run setblock ~1 ~1 ~1 air replace

execute if block ~-1 ~ ~-1 #cartographer_custom_enchantments:spurs run setblock ~-1 ~ ~-1 air replace
execute if block ~-1 ~1 ~-1 #cartographer_custom_enchantments:spurs run setblock ~-1 ~1 ~-1 air replace

execute if block ~-1 ~ ~1 #cartographer_custom_enchantments:spurs run setblock ~-1 ~ ~1 air replace
execute if block ~-1 ~1 ~1 #cartographer_custom_enchantments:spurs run setblock ~-1 ~1 ~1 air replace

execute if block ~1 ~ ~-1 #cartographer_custom_enchantments:spurs run setblock ~1 ~ ~-1 air replace
execute if block ~1 ~1 ~-1 #cartographer_custom_enchantments:spurs run setblock ~1 ~1 ~-1 air replace

playsound minecraft:entity.sheep.shear player @a[distance=..8] ~ ~ ~ 2 2
playsound minecraft:block.stone.break block @a[distance=..8] ~ ~ ~ 0.8 0.75

function #minecraft:cartographer/events/enchantments/passive/spurs