execute if score $melee ca.bleeding matches 1.. run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.25 0.4 0.25 0 10 normal

#Add 2/3/4 per level to score - (total dot is 3 / 4 / 7)
execute if score $melee ca.bleeding matches 1 run scoreboard players add @s ca.effect_bleed 2
execute if score $melee ca.bleeding matches 2 run scoreboard players add @s ca.effect_bleed 3
execute if score $melee ca.bleeding matches 3.. run scoreboard players add @s ca.effect_bleed 4


function #minecraft:cartographer/events/enchants_mob_hit/melee/bleeding
