setblock ~ ~1 ~ lodestone replace

summon armor_stand ~ ~1.25 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ca.la.tracked","multichoice_core"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2098549814,-1167962597,-2080563464,-424233954],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjVlYWM0NTk1NzkwNDY3YWRiMTkwOTU5MTkzZTg0Y2U2MjYzNmI0ZjE1NDAwMWVhOGUyMjliMjEzYjg1MWI3ZiJ9fX0="}]}}}}]}

summon item_frame ~ ~1 ~1 {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:3b,Tags:["ca.belongs_la","ca.la.tracked","loot_multichoice_side","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}
summon item_frame ~ ~1 ~-1 {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:2b,Tags:["ca.belongs_la","ca.la.tracked","loot_multichoice_side","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}
summon item_frame ~1 ~1 ~ {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:5b,Tags:["ca.belongs_la","ca.la.tracked","loot_multichoice_side","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}
summon item_frame ~-1 ~1 ~ {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:4b,Tags:["ca.belongs_la","ca.la.tracked","loot_multichoice_side","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}

scoreboard players set $la.run ca.var 1


particle minecraft:end_rod ~ ~1.25 ~ 0 0 0 0.05 10 normal

playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5

kill @s