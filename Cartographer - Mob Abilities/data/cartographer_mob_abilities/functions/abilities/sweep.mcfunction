scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

#execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p feet
#execute if score @s ca.sweep_side matches 1 as @s at @s run tp @s ~ ~ ~ ~-35 ~
#execute if score @s ca.sweep_side matches 2 as @s at @s run tp @s ~ ~ ~ ~35 ~

execute if score @s ca.sweep_side matches 1 run scoreboard players remove @s ca.aim_direction 35
execute if score @s ca.sweep_side matches 2 run scoreboard players add @s ca.aim_direction 35

scoreboard players set @s ca.sweep_animation 16


#Token Management. Remove the Token, set all nearby players token refresh on cooldown. - Check Accelerate Stacks First
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate