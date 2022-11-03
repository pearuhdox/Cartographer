execute if score $global helper_diff matches 1 run scoreboard players add @s ca.lifetime 35
execute if score $global helper_diff matches 2 run scoreboard players add @s ca.lifetime 50
execute if score $global helper_diff matches 3.. run scoreboard players add @s ca.lifetime 50

playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1.2 1.35
playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1.2 1.5
playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1.2 1.2
playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1.2 2

data modify entity @s Tags set from storage cartographer_mob_abilities:storm_tags Tags

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:abilities/storm/alchemist_apply

tag @s add setup

scoreboard players operation @s ca.ability_dmg = $damage ca.ability_dmg