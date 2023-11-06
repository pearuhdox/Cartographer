execute as @a[tag=ca.sweep_schedule] at @s run stopsound @a[distance=..8] player minecraft:entity.player.attack.sweep
execute as @a[tag=ca.sweep_schedule] at @s run playsound minecraft:entity.player.attack.strong player @a[distance=..8] ~ ~ ~ 1 1

tag @a remove ca.sweep_schedule