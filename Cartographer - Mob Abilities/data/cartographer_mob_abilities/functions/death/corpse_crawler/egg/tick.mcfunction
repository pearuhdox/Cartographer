scoreboard players set $run_corpse_@e ca.summon_id 0

execute if score @s ca.lifetime matches 2..10 run tp @s ~ ~ ~ ~5 ~
execute if score @s ca.lifetime matches 11..30 run tp @s ~ ~ ~ ~20 ~
execute if score @s ca.lifetime matches 31.. run tp @s ~ ~ ~ ~40 ~


#The data correction is called elsewhere in a different function
scoreboard players set $check_sheep_egg ca.mob_var 1
execute on passengers if entity @s[type=sheep,tag=corpse_crawler_egg_hitbox,nbt=!{AbsorptionAmount:0.0f}] run scoreboard players set $check_sheep_egg ca.mob_var 0

execute if score $check_sheep_egg ca.mob_var matches 1.. run function cartographer_mob_abilities:death/corpse_crawler/egg/despawn

execute if score $check_sheep_egg ca.mob_var matches 0 if score @s[tag=corpse_crawler_egg] ca.lifetime matches 41.. run function cartographer_mob_abilities:death/corpse_crawler/summon/branch


scoreboard players add @s ca.lifetime 1