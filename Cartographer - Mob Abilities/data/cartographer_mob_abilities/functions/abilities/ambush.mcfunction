scoreboard players set @s cooldown 10

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @s mob_move_dis 16
scoreboard players set @s mob_atk_dis 16

scoreboard players set @s mob_move_red 31
scoreboard players set @s mob_atk_red 31

particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 40

particle minecraft:smoke ~ ~ ~ 0.5 0.3 0.5 0.05 40

execute positioned as @p[distance=..25] rotated as @p[distance=..25] rotated ~ 0 positioned ^ ^ ^-1.5 if block ~ ~ ~ #bb:can_raycast run tp @s ~ ~ ~ facing entity @p[distance=..25] feet
execute positioned as @p[distance=..25] rotated as @p[distance=..25] rotated ~ 0 positioned ^ ^ ^-1.5 unless block ~ ~ ~ #bb:can_raycast run tp @s ~ ~1.5 ~ facing entity @p[distance=..25] feet

execute as @p[distance=..25] at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 2 0.5


execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit


#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test