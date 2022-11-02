execute if score $mm_bla ca.var matches 1 run tag @s add ca.blazing
execute if score $mm_gla ca.var matches 1 run tag @s add ca.glacial
execute if score $mm_ove ca.var matches 1 run tag @s add ca.overloading
execute if score $mm_ven ca.var matches 1 run tag @s add ca.venemous
execute if score $mm_zep ca.var matches 1 run tag @s add ca.zephyrous
execute if score $mm_hor ca.var matches 1 run tag @s add ca.horrifying
execute if score $mm_vol ca.var matches 1 run tag @s add ca.volatile
execute if score $mm_web ca.var matches 1 run tag @s add ca.webbing
execute if score $mm_cur ca.var matches 1 run tag @s add ca.cursing

execute if score $mm_alc ca.var matches 1 run tag @s add ca.alchemist

execute if score $mm_alc ca.var matches 1 run data modify entity @s HandItems[0] set from storage cartographer_mob_abilities:alchemist PotionCopy
execute if score $mm_alc ca.var matches 1 run data modify entity @s HandItems[1] set from storage cartographer_mob_abilities:alchemist PotionCopy

execute if score $mm_bla ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Fire Orb"}'},SkullOwner:{Id:[I;506271496,-186691926,-1902844364,1414935678],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM2ODdlMjVjNjMyYmNlOGFhNjFlMGQ2NGMyNGU2OTRjM2VlYTYyOWVhOTQ0ZjRjZjMwZGNmYjRmYmNlMDcxIn19fQ=="}]}}} 1
execute if score $mm_gla ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Fairy"}'},SkullOwner:{Id:[I;-1444605975,252136752,-2112308494,-227294081],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM2ODAyMTY1OGJmYzIxY2NjNDRjZjExZTQwNThmZDE3ZjMzNWMyNmE4MjY1ZGQ4NzBkMTkyNGExYThkNmQ2NSJ9fX0="}]}}} 1
execute if score $mm_ove ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (pink)"}'},SkullOwner:{Id:[I;419713612,-205960051,-1897764286,1459512019],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTllY2JkY2I1NTQxMjNmYTRkMzE4NzY1MzhiYzdmYjI0NzQ5NGFlYTMyNWJkMjY1OTU2OTQ1MDVhZWJkMTBlZCJ9fX0="}]}}} 1
execute if score $mm_ven ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Slime Ball (Sludge Juice)"}'},SkullOwner:{Id:[I;196718720,-1059240884,-2025752404,856144120],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTAxY2U2ODg0MjA3NGRkZTA1MzE4NWIyMThlMzRlZTMyNTljYjM2YWM0NzFkODA5OThmOWNiMDFmMzJlNTFjNyJ9fX0="}]}}} 1
execute if score $mm_zep ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Air Orb"}'},SkullOwner:{Id:[I;1901391180,-981119600,-1617867937,795265780],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjgyMjAyODJmMmVlNTk5NTExYjRmYzc0NjExMWM5NzM2ZDdiNDkxZThiY2ZiNjQ4YThhMTU2MjkyODFlZTUifX19"}]}}} 1
execute if score $mm_hor ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Sculk Mouth"}'},SkullOwner:{Id:[I;1594892811,20400759,-1492556847,-1874399426],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThhYzhkMTExYzI2OWJiN2VmYzZiNTY2MGI2ZDM3OWQ4MGQxZThhZDNmOTNjNGEwZWJhNWNjZWRjMWU3M2NiZSJ9fX0="}]}}} 1
execute if score $mm_cur ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Wither Soul"}'},SkullOwner:{Id:[I;1988774443,1495156618,-1566037378,1144595070],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIxNzg2OWVjMjA1ZDE3MjdmYzRjNjA1NWJkODY4Yjc4ODZmMmM4YWQ5OGZhNzA0Y2I3NmUxMWJkZDgwMjg3OSJ9fX0="}]}}} 1
execute if score $mm_web ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Spider Egg Sac"}'},SkullOwner:{Id:[I;-1645455644,-1934670820,-1428628513,339650943],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTgzYjMwZTlkMTM1YjA1MTkwZWVhMmMzYWM2MWUyYWI1NWEyZDgxZTFhNThkYmIyNjk4M2ExNDA4MjY2NCJ9fX0="}]}}}

execute if score $mm_vol ca.var matches 1 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"TNT (purple)"}'},SkullOwner:{Id:[I;74006677,1113408302,-2031464240,1928709901],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE2YzZlMzU3NTk0ZWQzYTQxOGU0ZTE4MjIzYjEzMWNiMGEyYzY4NjQ0MTg0NjU4OGM1YTI0YTVmZjRjIn19fQ=="}]}}} 1
