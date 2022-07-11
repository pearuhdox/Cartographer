setblock ~ ~1 ~ emerald_block replace

summon armor_stand ~ ~1.25 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ca.la.tracked","altar_core"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1264143419,-284540669,-1247721512,964741949],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWMzM2QzM2FkYWEzZDU4OGExYWU2MDkyODAyMmY2OTRiYjZmNzE4MWNmODY2YWFkY2E4M2FiODQwMmEyYTg2NSJ9fX0="}]}}}}]}

summon item_frame ~ ~2 ~ {Glowing:1b,Silent:1b,CustomNameVisible:1b,Facing:1b,Tags:["ca.belongs_la","ca.la.tracked","loot_altar_holder","loot_holder"],CustomName:'{"text":"Loot Placeholder","italic":false}',Item:{}}

particle minecraft:end_rod ~ ~1.25 ~ 0 0 0 0.05 10 normal

scoreboard players set $la.run ca.var 1


playsound minecraft:block.chest.open block @a[distance=..10] ~ ~ ~ 1 1.5

kill @s