execute as @s[type=block_display,tag=ca.trap_spawner] at @s run function cartographer_mimics:trap_spawner/tick

execute as @s[type=interaction,tag=ca.trap_counter] at @s unless entity @a[distance=..7,gamemode=creative] run kill @s
execute as @s[type=interaction,tag=ca.trap_counter] at @s unless block ~ ~ ~ spawner run kill @s