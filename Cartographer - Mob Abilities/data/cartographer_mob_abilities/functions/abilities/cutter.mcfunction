scoreboard players set @s cooldown 10

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0


data modify entity @s NoAI set value 1b
execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p feet

execute if score @s ca.cutter_side matches 1 run tp @s ~ ~ ~ ~-45 0
execute if score @s ca.cutter_side matches 2 run tp @s ~ ~ ~ ~45 0

scoreboard players set @s ca.cutter_animation 36

scoreboard players set @s ca.mob_move_mode 1
scoreboard players set @s ca.mob_move_time 36


#Token Management. Remove the Token, set all nearby players token refresh on cooldown. - Check Accelerate Stacks First
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate