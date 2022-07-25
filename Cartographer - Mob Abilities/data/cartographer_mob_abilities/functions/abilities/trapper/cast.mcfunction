execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 10
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 8

scoreboard players set @s ability_charge 0

particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10 normal @a
particle minecraft:poof ~ ~0.5 ~ 0.25 0 0.25 0.3 20 normal

playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 4 2
playsound minecraft:block.anvil.land hostile @a[distance=..32] ~ ~ ~ 4 2

execute if entity @s[tag=!cast_trap,tag=ca.volatile] positioned ^ ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-418756022,1014647780,-1255587254,1338585512],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJiMzYyZTA0NTMwYjQyZDNhOTJhMGE4NDRlMWQ2NDFkOWExYzM4MjM2OTIxMmY1ZjRiZTU0YTBlMmRiMzM4OCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.volatile] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.blazing] positioned ^ ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1372423976,505302114,-2087547869,828911800],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2M3ZWZkNmMxZTVjMzc0MDhiNzlhZjVlOWJmZWJkN2E1NmNhNWM5NzBlN2Y4NjFmMWU1NTVmNGI1ZWYwZjdjNiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.blazing] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.glacial] positioned ^ ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1704953634,-1843377011,-1207707982,1077900671],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM3ZGVhZjJkN2U3MmYyMWZjYTNhOTk2OTQ0ODFhNjc0ZjUxODVjNDRjM2I4ZjUzYjBiNDkzMTBmZTYxNzY3ZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.glacial] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.overloading] positioned ^ ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;784587022,10373842,-1408352004,-2048190341],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWIxMmI3Yzg4N2UyZmNmZjBkMzY4ZDU0YTljOWY3MmMzMzcxMWM2YjZmZDY5ZGZjY2JkNmUyZGE4NDBlM2FhZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.overloading] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.venemous] positioned ^ ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;974177228,-1759427312,-1701042734,180927762],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGYwYzQ4MDQzYjIxNTk5NDhlODFjYzU3NWUzZDY5MmFkYjFkNzNiMjViZDAxZDlmNzhiYTg5MmE5NDQ0ZTQyMCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.venemous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] positioned ^ ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-939295009,338641917,-1727328896,1769687263],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDBkNzJkN2VjZmYzMmYzOWU3MDA0Yjc1OGE1M2IxNzljZmZjMTcwMzUwNGY4MzdmNTUwOTA1NzJiODgxMzkwYiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.horrifying] positioned ^ ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;733914921,1071204021,-1469818770,-1009387944],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmMzMWVkZWZjZjE0Mzc2YzdhZDQ2NDY4YzVhYjY0YzZhNWNkMWRhYWQwYzMzZGMzY2Y5MmEyMDM0ZDYxODU5MSJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.horrifying] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap] positioned ^ ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
tag @s remove cast_trap

execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target



execute if entity @s[tag=!cast_trap,tag=ca.volatile] positioned ^0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-418756022,1014647780,-1255587254,1338585512],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJiMzYyZTA0NTMwYjQyZDNhOTJhMGE4NDRlMWQ2NDFkOWExYzM4MjM2OTIxMmY1ZjRiZTU0YTBlMmRiMzM4OCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.volatile] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.blazing] positioned ^0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1372423976,505302114,-2087547869,828911800],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2M3ZWZkNmMxZTVjMzc0MDhiNzlhZjVlOWJmZWJkN2E1NmNhNWM5NzBlN2Y4NjFmMWU1NTVmNGI1ZWYwZjdjNiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.blazing] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.glacial] positioned ^0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1704953634,-1843377011,-1207707982,1077900671],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM3ZGVhZjJkN2U3MmYyMWZjYTNhOTk2OTQ0ODFhNjc0ZjUxODVjNDRjM2I4ZjUzYjBiNDkzMTBmZTYxNzY3ZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.glacial] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.overloading] positioned ^0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;784587022,10373842,-1408352004,-2048190341],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWIxMmI3Yzg4N2UyZmNmZjBkMzY4ZDU0YTljOWY3MmMzMzcxMWM2YjZmZDY5ZGZjY2JkNmUyZGE4NDBlM2FhZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.overloading] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.venemous] positioned ^0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;974177228,-1759427312,-1701042734,180927762],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGYwYzQ4MDQzYjIxNTk5NDhlODFjYzU3NWUzZDY5MmFkYjFkNzNiMjViZDAxZDlmNzhiYTg5MmE5NDQ0ZTQyMCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.venemous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] positioned ^0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-939295009,338641917,-1727328896,1769687263],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDBkNzJkN2VjZmYzMmYzOWU3MDA0Yjc1OGE1M2IxNzljZmZjMTcwMzUwNGY4MzdmNTUwOTA1NzJiODgxMzkwYiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.horrifying] positioned ^0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;733914921,1071204021,-1469818770,-1009387944],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmMzMWVkZWZjZjE0Mzc2YzdhZDQ2NDY4YzVhYjY0YzZhNWNkMWRhYWQwYzMzZGMzY2Y5MmEyMDM0ZDYxODU5MSJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.horrifying] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap] positioned ^0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
tag @s remove cast_trap

execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target




execute if entity @s[tag=!cast_trap,tag=ca.volatile] positioned ^-0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-418756022,1014647780,-1255587254,1338585512],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJiMzYyZTA0NTMwYjQyZDNhOTJhMGE4NDRlMWQ2NDFkOWExYzM4MjM2OTIxMmY1ZjRiZTU0YTBlMmRiMzM4OCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.volatile] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.blazing] positioned ^-0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1372423976,505302114,-2087547869,828911800],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2M3ZWZkNmMxZTVjMzc0MDhiNzlhZjVlOWJmZWJkN2E1NmNhNWM5NzBlN2Y4NjFmMWU1NTVmNGI1ZWYwZjdjNiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.blazing] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.glacial] positioned ^-0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1704953634,-1843377011,-1207707982,1077900671],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM3ZGVhZjJkN2U3MmYyMWZjYTNhOTk2OTQ0ODFhNjc0ZjUxODVjNDRjM2I4ZjUzYjBiNDkzMTBmZTYxNzY3ZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.glacial] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.overloading] positioned ^-0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;784587022,10373842,-1408352004,-2048190341],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWIxMmI3Yzg4N2UyZmNmZjBkMzY4ZDU0YTljOWY3MmMzMzcxMWM2YjZmZDY5ZGZjY2JkNmUyZGE4NDBlM2FhZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.overloading] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.venemous] positioned ^-0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;974177228,-1759427312,-1701042734,180927762],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGYwYzQ4MDQzYjIxNTk5NDhlODFjYzU3NWUzZDY5MmFkYjFkNzNiMjViZDAxZDlmNzhiYTg5MmE5NDQ0ZTQyMCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.venemous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] positioned ^-0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-939295009,338641917,-1727328896,1769687263],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDBkNzJkN2VjZmYzMmYzOWU3MDA0Yjc1OGE1M2IxNzljZmZjMTcwMzUwNGY4MzdmNTUwOTA1NzJiODgxMzkwYiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.horrifying] positioned ^-0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;733914921,1071204021,-1469818770,-1009387944],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmMzMWVkZWZjZjE0Mzc2YzdhZDQ2NDY4YzVhYjY0YzZhNWNkMWRhYWQwYzMzZGMzY2Y5MmEyMDM0ZDYxODU5MSJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.horrifying] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap] positioned ^-0.3 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
tag @s remove cast_trap

execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~-15 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target



execute if entity @s[tag=!cast_trap,tag=ca.volatile] positioned ^0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-418756022,1014647780,-1255587254,1338585512],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJiMzYyZTA0NTMwYjQyZDNhOTJhMGE4NDRlMWQ2NDFkOWExYzM4MjM2OTIxMmY1ZjRiZTU0YTBlMmRiMzM4OCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.volatile] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.blazing] positioned ^0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1372423976,505302114,-2087547869,828911800],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2M3ZWZkNmMxZTVjMzc0MDhiNzlhZjVlOWJmZWJkN2E1NmNhNWM5NzBlN2Y4NjFmMWU1NTVmNGI1ZWYwZjdjNiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.blazing] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.glacial] positioned ^0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1704953634,-1843377011,-1207707982,1077900671],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM3ZGVhZjJkN2U3MmYyMWZjYTNhOTk2OTQ0ODFhNjc0ZjUxODVjNDRjM2I4ZjUzYjBiNDkzMTBmZTYxNzY3ZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.glacial] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.overloading] positioned ^0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;784587022,10373842,-1408352004,-2048190341],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWIxMmI3Yzg4N2UyZmNmZjBkMzY4ZDU0YTljOWY3MmMzMzcxMWM2YjZmZDY5ZGZjY2JkNmUyZGE4NDBlM2FhZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.overloading] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.venemous] positioned ^0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;974177228,-1759427312,-1701042734,180927762],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGYwYzQ4MDQzYjIxNTk5NDhlODFjYzU3NWUzZDY5MmFkYjFkNzNiMjViZDAxZDlmNzhiYTg5MmE5NDQ0ZTQyMCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.venemous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] positioned ^0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-939295009,338641917,-1727328896,1769687263],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDBkNzJkN2VjZmYzMmYzOWU3MDA0Yjc1OGE1M2IxNzljZmZjMTcwMzUwNGY4MzdmNTUwOTA1NzJiODgxMzkwYiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.horrifying] positioned ^0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;733914921,1071204021,-1469818770,-1009387944],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmMzMWVkZWZjZjE0Mzc2YzdhZDQ2NDY4YzVhYjY0YzZhNWNkMWRhYWQwYzMzZGMzY2Y5MmEyMDM0ZDYxODU5MSJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.horrifying] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap] positioned ^0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
tag @s remove cast_trap

execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~30 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target



execute if entity @s[tag=!cast_trap,tag=ca.volatile] positioned ^-0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-418756022,1014647780,-1255587254,1338585512],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJiMzYyZTA0NTMwYjQyZDNhOTJhMGE4NDRlMWQ2NDFkOWExYzM4MjM2OTIxMmY1ZjRiZTU0YTBlMmRiMzM4OCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.volatile] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.blazing] positioned ^-0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1372423976,505302114,-2087547869,828911800],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2M3ZWZkNmMxZTVjMzc0MDhiNzlhZjVlOWJmZWJkN2E1NmNhNWM5NzBlN2Y4NjFmMWU1NTVmNGI1ZWYwZjdjNiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.blazing] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.glacial] positioned ^-0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1704953634,-1843377011,-1207707982,1077900671],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM3ZGVhZjJkN2U3MmYyMWZjYTNhOTk2OTQ0ODFhNjc0ZjUxODVjNDRjM2I4ZjUzYjBiNDkzMTBmZTYxNzY3ZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.glacial] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.overloading] positioned ^-0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;784587022,10373842,-1408352004,-2048190341],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWIxMmI3Yzg4N2UyZmNmZjBkMzY4ZDU0YTljOWY3MmMzMzcxMWM2YjZmZDY5ZGZjY2JkNmUyZGE4NDBlM2FhZCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.overloading] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.venemous] positioned ^-0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;974177228,-1759427312,-1701042734,180927762],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGYwYzQ4MDQzYjIxNTk5NDhlODFjYzU3NWUzZDY5MmFkYjFkNzNiMjViZDAxZDlmNzhiYTg5MmE5NDQ0ZTQyMCJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.venemous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] positioned ^-0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-939295009,338641917,-1727328896,1769687263],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDBkNzJkN2VjZmYzMmYzOWU3MDA0Yjc1OGE1M2IxNzljZmZjMTcwMzUwNGY4MzdmNTUwOTA1NzJiODgxMzkwYiJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.zephyrous] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap,tag=ca.horrifying] positioned ^-0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;733914921,1071204021,-1469818770,-1009387944],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmMzMWVkZWZjZjE0Mzc2YzdhZDQ2NDY4YzVhYjY0YzZhNWNkMWRhYWQwYzMzZGMzY2Y5MmEyMDM0ZDYxODU5MSJ9fX0="}]}}}}]}
execute if entity @s[tag=!cast_trap,tag=ca.horrifying] run tag @s add cast_trap

execute if entity @s[tag=!cast_trap] positioned ^-0.6 ^1 ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:0b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["trap_projectile"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1619016068,81347229,-2144501381,548124676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc1ODYzMzNiMDgzZDJlNjQ3NzA2Yjg1NzM4NGQ1ZDUxMTBhM2FlMGJjN2I3ZmQwODQwYTQ3NDFkZTlmNzNmMCJ9fX0="}]}}}}]}
tag @s remove cast_trap

execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ facing entity @p feet
execute as @e[tag=!target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~-30 ~
execute as @e[tag=!target,tag=trap_projectile] run tag @s add target



#Add tags to the traps
scoreboard players set $trap_bla ca.var 0
scoreboard players set $trap_gla ca.var 0
scoreboard players set $trap_ove ca.var 0
scoreboard players set $trap_ven ca.var 0
scoreboard players set $trap_zep ca.var 0
scoreboard players set $trap_hor ca.var 0
scoreboard players set $trap_vol ca.var 0

execute if entity @s[tag=ca.blazing] run scoreboard players set $trap_bla ca.var 1
execute if entity @s[tag=ca.glacial] run scoreboard players set $trap_gla ca.var 1
execute if entity @s[tag=ca.overloading] run scoreboard players set $trap_ove ca.var 1
execute if entity @s[tag=ca.venemous] run scoreboard players set $trap_ven ca.var 1
execute if entity @s[tag=ca.zephyrous] run scoreboard players set $trap_zep ca.var 1
execute if entity @s[tag=ca.horrifying] run scoreboard players set $trap_hor ca.var 1
execute if entity @s[tag=ca.volatile] run scoreboard players set $trap_vol ca.var 1

execute as @e[type=armor_stand,tag=trap_projectile,tag=!checked] run function cartographer_mob_abilities:abilities/trapper/set_traits

#Get damage value of mob for projectiles
execute store result score @s ca.ability_dmg run attribute @s minecraft:generic.attack_damage get

scoreboard players operation @e[tag=trap_projectile,sort=nearest,tag=!checked,limit=5] ca.ability_dmg = @s ca.ability_dmg
tag @e[tag=trap_projectile,sort=nearest,tag=!checked,limit=5] add checked

tp @s ~ ~ ~ facing entity @p feet
scoreboard players set @s co_y 3
scoreboard players set @s co_send -8
function motion:motion/push

#Run not on hit traits
function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

execute unless entity @a[distance=11..20] as @e[tag=target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~ ~2
execute if entity @a[distance=11..20] as @e[tag=target,tag=trap_projectile] at @s run tp @s ~ ~ ~ ~ ~3
#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

#say test
