execute if score @s ca.accelerate_stacks matches 0..1 run function cartographer_mob_abilities:helper/token/mob_manage/reset_tokened

execute if score @s ca.accelerate_stacks matches 1.. run scoreboard players remove @s ca.accelerate_stacks 1