scoreboard players add @s ability_charge 1

execute if score @s ability_charge matches 1 at @p[distance=..25] run playsound minecraft:entity.vindicator.celebrate hostile @a[distance=..16] ~ ~ ~ 1 1

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s[tag=ca.triple] ability_charge matches 1 run scoreboard players set @s copies 1
execute if score @s[tag=ca.quadruple] ability_charge matches 1 run scoreboard players set @s copies 2
execute if score @s[tag=ca.quintuple] ability_charge matches 1 run scoreboard players set @s copies 3

execute if score @s ability_charge matches 1 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run scoreboard players set @s mob_move_red 18
execute if score @s ability_charge matches 1 run scoreboard players set @s mob_atk_red 18

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 21.. run function cartographer_mob_abilities:abilities/duplicator
