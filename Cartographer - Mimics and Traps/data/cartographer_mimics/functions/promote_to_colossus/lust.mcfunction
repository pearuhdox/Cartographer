execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run playsound minecraft:entity.iron_golem.repair master @p ~ ~ ~ 1 0.5
execute if block ~ ~-0.2 ~ spawner positioned ~ ~-0.2 ~ align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal

data modify storage cartographer_mimics:colossus data set value {}

execute store result score $x ca.mimic_var run data get entity @s Pos[0] 1
execute store result score $y ca.mimic_var run data get entity @s Pos[1] 1
execute store result score $z ca.mimic_var run data get entity @s Pos[2] 1

execute store result storage cartographer_mimics:colossus data.x int 1 run scoreboard players get $x ca.mimic_var
execute store result storage cartographer_mimics:colossus data.z int 1 run scoreboard players get $z ca.mimic_var
execute store result storage cartographer_mimics:colossus data.y int 1 run scoreboard players remove $y ca.mimic_var 1

data modify storage cartographer_mimics:colossus data.type set value "colossus"
data modify storage cartographer_mimics:colossus data.colossus_type set value "lust"

data modify storage cartographer_mimics:colossus registry append from storage cartographer_mimics:colossus data

execute if block ~ ~-0.2 ~ spawner run tellraw @p {"text":"The spawner above is now a Colossus! (Lust)","color":"aqua","italic":false}
execute unless block ~ ~-0.2 ~ spawner run tellraw @p {"text":"Command failed: Not on top of a spawner.","color":"red","italic":false}