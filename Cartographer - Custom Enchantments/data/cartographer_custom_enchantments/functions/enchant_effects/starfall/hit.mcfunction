scoreboard players set $starfall_mob ca.ench_var 1

execute positioned ~-1 ~ ~-1 as @e[type=#bb:hostile,dx=3,dz=3,dy=3] at @s run function cartographer_custom_enchantments:enchant_effects/starfall/hit_branch


#Visuals
particle minecraft:firework ~ ~0.5 ~ 0.25 0 0.25 0.075 15 normal
particle minecraft:cloud ~ ~1.5 ~ 0 2 0 0 30 normal
playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.1 1.32
playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.5 1.5
function cartographer_custom_enchantments:enchant_effects/starfall/circle

function #minecraft:cartographer/events/enchants_mob_hit/passive/starfall