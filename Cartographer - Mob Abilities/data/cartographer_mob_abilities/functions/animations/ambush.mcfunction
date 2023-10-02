scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/ambush/charge_bar

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 at @p[distance=..25] run playsound minecraft:entity.witch.ambient hostile @a[distance=..16] ~ ~ ~ 3 0.5

execute if score @s ability_charge matches 1 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 21.. run function cartographer_mob_abilities:abilities/ambush
