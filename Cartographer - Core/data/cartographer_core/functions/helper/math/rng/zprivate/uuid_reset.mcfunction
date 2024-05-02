summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg math run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp math run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 math run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 math run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg math += #temp math
scoreboard players operation #lcg math += #temp1 math
scoreboard players operation #lcg math += #temp2 math
kill @e[tag=uuid]