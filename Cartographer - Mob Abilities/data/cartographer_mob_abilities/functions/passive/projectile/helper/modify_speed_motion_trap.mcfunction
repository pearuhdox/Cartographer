execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run function cartographer_mob_abilities:passive/projectile/boost_trap_speed

execute store result score $proj_change_xp ca.var run data get entity @s Motion[0] 1000
execute store result score $proj_change_yp ca.var run data get entity @s Motion[1] 1000
execute store result score $proj_change_zp ca.var run data get entity @s Motion[2] 1000

execute store result score $proj_change_x ca.var run data get entity @s Motion[0] 1000
execute store result score $proj_change_y ca.var run data get entity @s Motion[1] 1000
execute store result score $proj_change_z ca.var run data get entity @s Motion[2] 1000

execute if entity @a[distance=..7] run scoreboard players operation $proj_change_x ca.var *= $50 ca.CONSTANT
execute if entity @a[distance=..7] run scoreboard players operation $proj_change_z ca.var *= $50 ca.CONSTANT

execute if entity @a[distance=..7] run scoreboard players operation $proj_change_x ca.var /= $100 ca.CONSTANT
execute if entity @a[distance=..7] run scoreboard players operation $proj_change_z ca.var /= $100 ca.CONSTANT

#scoreboard players operation $proj_change_y ca.var *= $10 ca.CONSTANT

scoreboard players operation $proj_change_y ca.var += $100 ca.CONSTANT

execute store result entity @s Motion[0] double 0.001 run scoreboard players add $proj_change_x ca.var 0
execute store result entity @s Motion[1] double 0.001 run scoreboard players add $proj_change_y ca.var 0
execute store result entity @s Motion[2] double 0.001 run scoreboard players add $proj_change_z ca.var 0

execute if entity @s[tag=ca.blazing] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (red)"}'},SkullOwner:{Id:[I;791410333,-2025962018,-1929931254,1482553209],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDAyYTM2ZTIxNDJmZDZiOTI2M2IwYWFiZmExZTI0MjBjMTRlMWQ2NDQwNWUyOWEyMzc0OWQ2YTY4NzExZGVhNyJ9fX0="}]}}} 1
execute if entity @s[tag=ca.glacial] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (light blue)"}'},SkullOwner:{Id:[I;1704953634,-1843377011,-1207707982,1077900671],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM3ZGVhZjJkN2U3MmYyMWZjYTNhOTk2OTQ0ODFhNjc0ZjUxODVjNDRjM2I4ZjUzYjBiNDkzMTBmZTYxNzY3ZCJ9fX0="}]}}} 1
execute if entity @s[tag=ca.horrifying] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (lilac)"}'},SkullOwner:{Id:[I;784587022,10373842,-1408352004,-2048190341],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWIxMmI3Yzg4N2UyZmNmZjBkMzY4ZDU0YTljOWY3MmMzMzcxMWM2YjZmZDY5ZGZjY2JkNmUyZGE4NDBlM2FhZCJ9fX0="}]}}} 1
execute if entity @s[tag=ca.overloading] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (lime)"}'},SkullOwner:{Id:[I;918634204,-2089660659,-1299837877,-1155295330],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjBhMWNlZWRmNzI5YzRjMjFkMzVhYzQ5YTE4YWEyNWZiM2JmMTU5OGJiNjAwNjI3MzdiODc4NThlNGI1YzAwMiJ9fX0="}]}}} 1
execute if entity @s[tag=ca.venemous] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (white)"}'},SkullOwner:{Id:[I;-1100853370,1115440775,-1602918459,-1096733800],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTk0NjlhMmY3YTk4NTkzYTRiMGJkNjM4M2Q3MGZjZjEwNTkwNGE5MzBiZWFhMDY3MWE5OTliMTkzMGI5NDk1MyJ9fX0="}]}}} 1
execute if entity @s[tag=ca.zephyrous] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (cyan)"}'},SkullOwner:{Id:[I;439015735,337265029,-1642138562,-796828734],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2YwYzM4ZTFjNWQ5YWYyZDE0YzZkOTcyZDcxMjNiZGEwOGNlM2Q2MWU4MGVjMjk2OGU5M2U4N2RkZmMyNTcxNyJ9fX0="}]}}} 1
execute if entity @s[tag=ca.alchemist] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Empty Potion"}'},SkullOwner:{Id:[I;-2145143634,1496860544,-1357398712,1066575206],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjJmZDQ4MWU2OTNmYzgyNTRmZDYyNWI1ZDE2NjMwYTA2YTZmZGY2MTIwZDA2YjIzNDVlM2U2ZGRiNTE0N2Y5YSJ9fX0="}]}}} 1
execute if entity @s[tag=ca.webbing] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Spider Egg Sac"}'},SkullOwner:{Id:[I;-1645455644,-1934670820,-1428628513,339650943],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTgzYjMwZTlkMTM1YjA1MTkwZWVhMmMzYWM2MWUyYWI1NWEyZDgxZTFhNThkYmIyNjk4M2ExNDA4MjY2NCJ9fX0="}]}}} 1
execute if entity @s[tag=ca.cursing] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orb (black)"}'},SkullOwner:{Id:[I;1424351730,673926502,-1625861387,1048196309],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDBmYjg3OGFhMjhiZGQ3NzQ1ZDM4Mjg2MTFkNzI2ZDk2NDYxNDQxZTA2MjY4OWIyODY2YmNmYTkwYjU5YjAwMyJ9fX0="}]}}} 1



execute if entity @s[tag=ca.volatile] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"TNT (brown)"}'},SkullOwner:{Id:[I;1435158969,-160284096,-1810371621,-1110550680],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTkyOTQyMjFlODNiMjZhMDg2YzNjZmQ5OTVmOTk5MjMzYzI1ZmQ3ZWFhM2ZjM2YzMmU4MDlmMTc2NzUzYmIifX19"}]}}} 1


execute if entity @s[tag=ca.alchemist] run data modify entity @s HandItems[0] set from storage cartographer_mob_abilities:alchemist PotionCopy
execute if entity @s[tag=ca.alchemist] run data modify entity @s HandItems[1] set from storage cartographer_mob_abilities:alchemist PotionCopy

#Change the grenade visual as well if necessary