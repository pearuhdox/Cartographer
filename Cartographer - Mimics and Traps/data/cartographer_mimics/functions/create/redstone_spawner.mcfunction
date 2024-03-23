execute store result score $x ca.mimic_var run data get entity @s Pos[0] 1
execute store result score $y ca.mimic_var run data get entity @s Pos[1] 1
execute store result score $z ca.mimic_var run data get entity @s Pos[2] 1

execute store result storage cartographer_mimics:colossus data.x int 1 run scoreboard players get $x ca.mimic_var
execute store result storage cartographer_mimics:colossus data.z int 1 run scoreboard players get $z ca.mimic_var
execute store result storage cartographer_mimics:colossus data.y int 1 run scoreboard players remove $y ca.mimic_var 1

data modify storage cartographer_mimics:colossus data.type set value "redstone"
#data modify storage cartographer_mimics:colossus data.colossus_type set value "envy"

data modify storage cartographer_mimics:colossus registry append from storage cartographer_mimics:colossus data

#execute unless entity @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] run function cartographer_mimics:create/trap_spawner_call

#execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ as @e[type=block_display,tag=ca.trap_spawner,limit=1,sort=nearest,distance=..2] at @s run function cartographer_mimics:create/branches/redstone_branch

tellraw @p [{"text":"This trap spawner is now a Redstone Spawner.","color":"aqua","italic":false}]