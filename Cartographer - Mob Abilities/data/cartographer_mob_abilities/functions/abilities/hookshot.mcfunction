scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

scoreboard players set @s helper_raycast 13

effect give @s slowness 1 6 true

execute as @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/hookshot_raycast

data merge entity @s {NoAI:0}

playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..16] ~ ~ ~ 3 2

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.

kill @e[type=armor_stand,tag=hook_marker,distance=..1,limit=1]

scoreboard players set @a[distance=..20] cooldown 3
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t