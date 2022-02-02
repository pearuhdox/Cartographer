summon item_frame ~ ~1 ~ {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:1b,Tags:["ca.la.tracked","loot_holder_ground","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}

execute if block ~ ~1 ~ redstone_wire run tag @e[tag=loot_holder_ground,sort=nearest,limit=1,distance=..2] add trapped
execute if block ~ ~1 ~ redstone_wire run setblock ~ ~1 ~ air replace

scoreboard players set $la.run ca.var 1

particle minecraft:end_rod ~ ~1.25 ~ 0 0 0 0.05 10 normal

playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5

kill @s