scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

scoreboard players set @s helper_raycast 13

effect give @s slowness 1 6 true

execute as @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/webshot_raycast

data merge entity @s {NoAI:0}

playsound minecraft:entity.spider.death hostile @a[distance=..16] ~ ~ ~ 2 0.5

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..20] cooldown 2
tag @s remove tokened

schedule function cartographer_mob_abilities:helper/attacked_reset 10t