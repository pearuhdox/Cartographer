tag @s remove ca.can_sprint_dash

playsound minecraft:entity.shulker_bullet.hurt player @a[distance=..8] ~ ~ ~ 0.5 2
playsound minecraft:item.firecharge.use player @a[distance=..8] ~ ~ ~ 0.3 2

execute rotated ~ 0 run particle minecraft:poof ^ ^0.25 ^-0.75 0.3 0 0.3 0.1 8 normal

data modify storage cartographer_custom_enchantments:sprint_dash data.Pos set value []

data modify storage cartographer_custom_enchantments:sprint_dash data.Pos set value [0d,0d,0d]
execute store result storage cartographer_custom_enchantments:sprint_dash data.Pos[0] double 0.01 run scoreboard players get @s ca.sprint_dash_x
execute store result storage cartographer_custom_enchantments:sprint_dash data.Pos[1] double 0.01 run scoreboard players get @s ca.sprint_dash_y
execute store result storage cartographer_custom_enchantments:sprint_dash data.Pos[2] double 0.01 run scoreboard players get @s ca.sprint_dash_z

scoreboard players set @s ca.sprint_dash_time 0

data modify entity 31182015-1791-2513-1181-151800000000 Pos set from storage cartographer_custom_enchantments:sprint_dash data.Pos

execute if score @s ca.sprint_dash matches 1 run scoreboard players set $strength delta.api.launch 1800
execute if score @s ca.sprint_dash matches 2 run scoreboard players set $strength delta.api.launch 2400
execute if score @s ca.sprint_dash matches 3.. run scoreboard players set $strength delta.api.launch 3000

summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,effects:[{id:"minecraft:hunger",amplifier:71b,duration:4,ShowParticles:0b}]}

execute positioned as 31182015-1791-2513-1181-151800000000 facing entity @s feet rotated ~ ~35 positioned as @s run function delta:api/launch_looking

scoreboard players set @s ca.delta.cooldown 10

tp 31182015-1791-2513-1181-151800000000 4206900 0 4206900

function #minecraft:cartographer/events/enchantments/passive/sprint_dash