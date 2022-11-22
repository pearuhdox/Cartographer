scoreboard players operation $proj_damage ca.ability_dmg = $damage ca.ability_dmg
scoreboard players operation $proj_damage ca.ability_dmg *= $2 ca.CONSTANT

scoreboard players operation @s ca.ability_dmg = $proj_damage ca.ability_dmg

data modify entity @s Tags set from storage cartographer_mob_abilities:projectiles TagTemplate
data modify entity @s HandItems[0] set from storage cartographer_mob_abilities:projectiles AlchemistTemplate
data modify entity @s HandItems[1] set from storage cartographer_mob_abilities:projectiles AlchemistTemplate

tag @s add magic_missile_projectile
tag @s add passive_missile
tag @s add checked
tag @s add new_proj_replace
tag @s add passive_replaced_projectile

execute if entity @s[tag=ca.blazing] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Fire Orb"}'},SkullOwner:{Id:[I;506271496,-186691926,-1902844364,1414935678],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM2ODdlMjVjNjMyYmNlOGFhNjFlMGQ2NGMyNGU2OTRjM2VlYTYyOWVhOTQ0ZjRjZjMwZGNmYjRmYmNlMDcxIn19fQ=="}]}}} 1
execute if entity @s[tag=ca.glacial] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Fairy"}'},SkullOwner:{Id:[I;-1444605975,252136752,-2112308494,-227294081],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTM2ODAyMTY1OGJmYzIxY2NjNDRjZjExZTQwNThmZDE3ZjMzNWMyNmE4MjY1ZGQ4NzBkMTkyNGExYThkNmQ2NSJ9fX0="}]}}} 1
execute if entity @s[tag=ca.overloading] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (pink)"}'},SkullOwner:{Id:[I;419713612,-205960051,-1897764286,1459512019],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTllY2JkY2I1NTQxMjNmYTRkMzE4NzY1MzhiYzdmYjI0NzQ5NGFlYTMyNWJkMjY1OTU2OTQ1MDVhZWJkMTBlZCJ9fX0="}]}}} 1
execute if entity @s[tag=ca.venemous] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Slime Ball (Sludge Juice)"}'},SkullOwner:{Id:[I;196718720,-1059240884,-2025752404,856144120],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTAxY2U2ODg0MjA3NGRkZTA1MzE4NWIyMThlMzRlZTMyNTljYjM2YWM0NzFkODA5OThmOWNiMDFmMzJlNTFjNyJ9fX0="}]}}} 1
execute if entity @s[tag=ca.cursing] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Wither Soul"}'},SkullOwner:{Id:[I;1988774443,1495156618,-1566037378,1144595070],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjIxNzg2OWVjMjA1ZDE3MjdmYzRjNjA1NWJkODY4Yjc4ODZmMmM4YWQ5OGZhNzA0Y2I3NmUxMWJkZDgwMjg3OSJ9fX0="}]}}} 1

execute if entity @s[tag=ca.zephyrous] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Air Orb"}'},SkullOwner:{Id:[I;1901391180,-981119600,-1617867937,795265780],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjgyMjAyODJmMmVlNTk5NTExYjRmYzc0NjExMWM5NzM2ZDdiNDkxZThiY2ZiNjQ4YThhMTU2MjkyODFlZTUifX19"}]}}} 1
execute if entity @s[tag=ca.webbing] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Spider Egg Sac"}'},SkullOwner:{Id:[I;-1645455644,-1934670820,-1428628513,339650943],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTgzYjMwZTlkMTM1YjA1MTkwZWVhMmMzYWM2MWUyYWI1NWEyZDgxZTFhNThkYmIyNjk4M2ExNDA4MjY2NCJ9fX0="}]}}}
execute if entity @s[tag=ca.horrifying] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Sculk Mouth"}'},SkullOwner:{Id:[I;1594892811,20400759,-1492556847,-1874399426],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThhYzhkMTExYzI2OWJiN2VmYzZiNTY2MGI2ZDM3OWQ4MGQxZThhZDNmOTNjNGEwZWJhNWNjZWRjMWU3M2NiZSJ9fX0="}]}}} 1

execute if entity @s[tag=ca.alchemist] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (rainbow)"}'},SkullOwner:{Id:[I;-2124574949,-1052619258,-1871902310,-1270795148],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTNmOWVlZGEzYmEyM2ZlMTQyM2M0MDM2ZTdkZDBhNzQ0NjFkZmY5NmJhZGM1YjJmMmI5ZmFhN2NjMTZmMzgyZiJ9fX0="}]}}} 1

execute if entity @s[tag=ca.volatile] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"TNT (purple)"}'},SkullOwner:{Id:[I;74006677,1113408302,-2031464240,1928709901],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE2YzZlMzU3NTk0ZWQzYTQxOGU0ZTE4MjIzYjEzMWNiMGEyYzY4NjQ0MTg0NjU4OGM1YTI0YTVmZjRjIn19fQ=="}]}}} 1

data modify storage cartographer_mob_abilities:projectiles DataTemplate set value {}
data modify storage cartographer_mob_abilities:projectiles TagTemplate set value []
data modify storage cartographer_mob_abilities:projectiles AlchemistTemplate set value {}