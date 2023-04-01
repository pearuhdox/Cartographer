execute as @a[tag=augment_dmg_prime] at @s run function bb:call/hpm/player/damage/true

scoreboard players set @a[tag=augment_dmg_prime] bbl.damage_queue 0 

tag @a remove augment_dmg_prime