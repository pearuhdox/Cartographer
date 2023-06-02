function cartographer_mob_abilities:abilities/reflect/calc_damage

scoreboard players operation @a[distance=..3.5] ca.damage_queue = $damage ca.ability_dmg

execute as @a[distance=..3.5] at @s run function cartographer_mob_abilities:helper/damage/ability_melee

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3.5] at @s run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..3.5] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_hit

tag @a remove ability_tagged
