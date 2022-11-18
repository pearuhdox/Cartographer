setblock ~ ~1 ~ reinforced_deepslate replace


summon item_frame ~ ~2 ~ {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:1b,Tags:["ca.belongs_la","ca.la.tracked","loot_altar_holder","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}

particle minecraft:end_rod ~ ~1.25 ~ 0 0 0 0.05 10 normal

scoreboard players set $la.run ca.var 1


playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5

kill @s