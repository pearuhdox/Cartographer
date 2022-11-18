setblock ~ ~1 ~ lodestone replace

setblock ~ ~2 ~ minecraft:player_head[rotation=2]{SkullOwner:{Id:[I;-1603067143,-88585229,-1777822630,-164656805],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7ImlkIjoiYmRkNmU1MzM2NDNkNDhmN2E5YWYwNjBkMzFkYmM3NmUiLCJ0eXBlIjoiU0tJTiIsInVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjJjNjE3ODM1OTBiNmU2ODQ3MzAwNWIzMmVjMGEwOGJjM2I5NWQ2NDkwMzZiMzU4YWZlNzdhZDhhZjg4NDgwMCIsInByb2ZpbGVJZCI6IjgwMThhYjAwYjJhZTQ0Y2FhYzliZjYwZWY5MGY0NWU1IiwidGV4dHVyZUlkIjoiZjJjNjE3ODM1OTBiNmU2ODQ3MzAwNWIzMmVjMGEwOGJjM2I5NWQ2NDkwMzZiMzU4YWZlNzdhZDhhZjg4NDgwMCJ9fSwic2tpbiI6eyJpZCI6ImJkZDZlNTMzNjQzZDQ4ZjdhOWFmMDYwZDMxZGJjNzZlIiwidHlwZSI6IlNLSU4iLCJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2YyYzYxNzgzNTkwYjZlNjg0NzMwMDViMzJlYzBhMDhiYzNiOTVkNjQ5MDM2YjM1OGFmZTc3YWQ4YWY4ODQ4MDAiLCJwcm9maWxlSWQiOiI4MDE4YWIwMGIyYWU0NGNhYWM5YmY2MGVmOTBmNDVlNSIsInRleHR1cmVJZCI6ImYyYzYxNzgzNTkwYjZlNjg0NzMwMDViMzJlYzBhMDhiYzNiOTVkNjQ5MDM2YjM1OGFmZTc3YWQ4YWY4ODQ4MDAifSwiY2FwZSI6bnVsbH0="}]}}} replace
summon villager ~ ~1.25 ~ {VillagerData:{level:99},NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"no",Tags:["ca.la.tracked","multichoice_core"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Offers:{Recipes:[{buy:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Multichoice Potentials","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Each trade here shows one of the","color":"white","italic":false}','{"text":"items on the sides of the pedestal.","color":"white","italic":false}','{"text":"Taking one item will destroy all","color":"white","italic":false}','{"text":"other options on the pedestal.","color":"white","italic":false}']},Enchantments:[{}]}},sell:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:'{"text":"Multichoice Potentials","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Each trade here shows one of the","color":"white","italic":false}','{"text":"items on the sides of the pedestal.","color":"white","italic":false}','{"text":"Taking one item will destroy all","color":"white","italic":false}','{"text":"other options on the pedestal.","color":"white","italic":false}']},Enchantments:[{}]}}}]}}

summon glow_item_frame ~ ~1 ~1 {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:3b,Tags:["ca.belongs_la","ca.la.tracked","loot_multichoice_side","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}
summon glow_item_frame ~ ~1 ~-1 {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:2b,Tags:["ca.belongs_la","ca.la.tracked","loot_multichoice_side","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}
summon glow_item_frame ~1 ~1 ~ {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:5b,Tags:["ca.belongs_la","ca.la.tracked","loot_multichoice_side","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}
summon glow_item_frame ~-1 ~1 ~ {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:4b,Tags:["ca.belongs_la","ca.la.tracked","loot_multichoice_side","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}

scoreboard players set $la.run ca.var 1


particle minecraft:end_rod ~ ~1.25 ~ 0 0 0 0.05 10 normal

playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5

kill @s