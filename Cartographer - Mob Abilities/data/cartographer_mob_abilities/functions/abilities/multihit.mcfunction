scoreboard players set @s cooldown 11

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0


data modify entity @s NoAI set value 1b

scoreboard players set @s ca.multihit_animation 30

scoreboard players set @s ca.mob_move_mode 1
scoreboard players set @s ca.mob_move_time 30


#Token Management. Remove the Token, set all nearby players token refresh on cooldown. - Check Accelerate Stacks First
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate