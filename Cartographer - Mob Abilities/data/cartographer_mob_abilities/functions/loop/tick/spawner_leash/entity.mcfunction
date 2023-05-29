scoreboard players set $has_target ca.sl.var 0
execute on target run scoreboard players set $has_target sl.var 1

execute unless score $has_target ca.sl.var matches 0 run scoreboard players set @s ca.sl.lifetime 0
execute if score $has_target ca.sl.var matches 0 run scoreboard players add @s ca.sl.lifetime 1

execute if score @s ca.sl.lifetime > $time ca.sl.var run function cartographer_mob_abilities:loop/tick/spawner_leash/despawn