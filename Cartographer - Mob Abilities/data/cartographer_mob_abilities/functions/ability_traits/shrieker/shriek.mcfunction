playsound minecraft:block.sculk_shrieker.shriek hostile @a[distance=..24] ~ ~ ~ 2 1.35
playsound minecraft:block.sculk_shrieker.shriek hostile @a[distance=..24] ~ ~ ~ 2 0.85

tag @s add ca.has_active

tag @s remove ca.shrieker

tag @s add ca.attack_override

tag @s add ca.temp_token
tag @s add ca.shrieked

scoreboard players set @s cooldown 0

execute anchored eyes run particle minecraft:shriek 0 ^ ^ ^-0.25 0 0 0 0 1 force
execute anchored eyes run particle minecraft:shriek 5 ^ ^ ^-0.25 0 0 0 0 1 force
execute anchored eyes run particle minecraft:shriek 10 ^ ^ ^-0.25 0 0 0 0 1 force
execute anchored eyes run particle minecraft:shriek 15 ^ ^ ^-0.25 0 0 0 0 1 force

function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit