execute on vehicle if entity @s[type=block_display,tag=ca.trap_spawner] at @s run function cartographer_mimics:trap_spawner/tick

execute on vehicle on passengers if entity @s[type=interaction,tag=ca.trap_counter] at @s unless entity @a[distance=..7,gamemode=creative] run kill @s
execute on vehicle on passengers if entity @s[type=interaction,tag=ca.trap_counter] at @s unless block ~ ~ ~ spawner run kill @s