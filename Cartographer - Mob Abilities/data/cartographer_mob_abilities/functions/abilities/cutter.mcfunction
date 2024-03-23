scoreboard players set @s cooldown 10

scoreboard players set @s ca.cutter_animation 73

execute if score @s ca.accelerate_stacks matches 1.. run scoreboard players add @s ca.cutter_animation 72
execute if score @s ca.accelerate_stacks matches 2.. run scoreboard players add @s ca.cutter_animation 72
execute if score @s ca.accelerate_stacks matches 3.. run scoreboard players add @s ca.cutter_animation 72

execute if score @s ca.accelerate_stacks matches 1.. run scoreboard players set @s ca.accelerate_stacks 0

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0


#Token Management. Remove the Token, set all nearby players token refresh on cooldown. - Check Accelerate Stacks First
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate