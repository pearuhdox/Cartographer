execute unless entity @s[scores={ability_charge=1..2}] at @p[distance=..25] run playsound minecraft:entity.vindicator.celebrate hostile @a[distance=..16] ~ ~ ~ 1 1

execute unless entity @s[scores={ability_charge=1}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1}] run scoreboard players set @s mob_move_red 18
execute unless entity @s[scores={ability_charge=1}] run scoreboard players set @s mob_atk_red 18

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=1},tag=ca.triple] run scoreboard players set @s copies 1
execute if entity @s[scores={ability_charge=1},tag=ca.quadruple] run scoreboard players set @s copies 2
execute if entity @s[scores={ability_charge=1},tag=ca.quintuple] run scoreboard players set @s copies 3

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/duplicator