particle minecraft:large_smoke ~ ~ ~ 0 0 0 0 1 normal

scoreboard players add @s ca.loot_var 1

execute if entity @s[nbt={HasStung:1b}] run scoreboard players set @s ca.loot_var 400

execute if score @s ca.loot_var matches 400.. run tp @s ~ -4096 ~
execute if score @s ca.loot_var matches 400.. run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

scoreboard players set $swarm_has_target ca.loot_var 0
execute on target run scoreboard players set $swarm_has_target ca.loot_var 2

execute if score $swarm_has_target ca.loot_var matches 0 run damage @s 1 minecraft:generic by @e[type=#bb:hostile,type=!bee,distance=..16,tag=!ca.pot_swarm,sort=nearest,limit=1]
execute if score $swarm_has_target ca.loot_var matches 0 run scoreboard players add @s ca.loot_var 5