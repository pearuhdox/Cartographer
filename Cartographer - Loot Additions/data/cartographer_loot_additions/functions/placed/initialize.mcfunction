summon item_frame ~ ~1 ~ {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:1b,Tags:["loot_holder_ground","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}

particle minecraft:end_rod ~ ~1.25 ~ 0 0 0 0.05 10 normal

playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5

kill @s