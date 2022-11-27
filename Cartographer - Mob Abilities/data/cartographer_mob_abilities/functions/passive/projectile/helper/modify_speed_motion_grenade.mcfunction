execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run function cartographer_mob_abilities:passive/projectile/boost_grenade_speed

execute store result score $proj_change_xp ca.var run data get entity @s Motion[0] 1000
execute store result score $proj_change_yp ca.var run data get entity @s Motion[1] 1000
execute store result score $proj_change_zp ca.var run data get entity @s Motion[2] 1000

execute store result score $proj_change_x ca.var run data get entity @s Motion[0] 1000
execute store result score $proj_change_y ca.var run data get entity @s Motion[1] 1000
execute store result score $proj_change_z ca.var run data get entity @s Motion[2] 1000

execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run function cartographer_mob_abilities:passive/projectile/helper/grenade/power_distances
execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[0] run function cartographer_mob_abilities:passive/projectile/helper/grenade/motion_distances

execute store result entity @s Motion[0] double 0.001 run scoreboard players add $proj_change_x ca.var 0
execute store result entity @s Motion[1] double 0.001 run scoreboard players add $proj_change_y ca.var 0
execute store result entity @s Motion[2] double 0.001 run scoreboard players add $proj_change_z ca.var 0

execute if entity @s[tag=ca.blazing] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2105963268,-93173279,-1568118406,1332780703],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY1MzU0Y2EyZWUxYjhmZGM5NTViYjQzN2JiMjYxOTU3NWZjNzk4M2YzNjlhZmEzYTFmN2QxYjk3NTY3ZWE4In19fQ=="}]}}}}
execute if entity @s[tag=ca.glacial] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1621761885,420563628,-1988687145,1381854084],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGRiYTY0MmVmZmZhMTNlYzM3MzBlYWZjNTkxNGFiNjgxMTVjMWY5OTg4MDNmNzQ0NTJlMmUwY2QyNmFmMGI4In19fQ=="}]}}}}
execute if entity @s[tag=ca.horrifying] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Sculk Fruit"}'},SkullOwner:{Id:[I;1605943110,-212384401,-1306598315,-901477893],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGYxYmVjYTNjNjIyODIxYmVjOGM4ZWI4N2QxMWNmOTY5YmVjM2NkMzdiNTc5YmI4NGU5NjI4MmY3YzFjOTA1NyJ9fX0="}]}}} 1
execute if entity @s[tag=ca.overloading] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-497262744,1908819480,-1557314868,888921618],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc0MDBlYTE5ZGJkODRmNzVjMzlhZDY4MjNhYzRlZjc4NmYzOWY0OGZjNmY4NDYwMjM2NmFjMjliODM3NDIyIn19fQ=="}]}}}}
execute if entity @s[tag=ca.venemous] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;230629621,837109324,-1330587645,-865550672],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTVhZGU5MjcxNTg3ZTlmY2Y2NWYwZTA4YjMzM2YyNWZiOWRmOTlmYjRmNDJhZDBmODZmYjM1NTExNmU5OGIzZSJ9fX0="}]}}}}
execute if entity @s[tag=ca.zephyrous] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1692525654,-1637072104,-1690245337,-788445021],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTg0YTY4ZmQ3YjYyOGQzMDk2NjdkYjdhNTU4NTViNTRhYmMyM2YzNTk1YmJlNDMyMTYyMTFiZTVmZTU3MDE0In19fQ=="}]}}}}
execute if entity @s[tag=ca.volatile] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2108940611,120472760,-1665635429,1472141395],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGVlYmI4YjAzY2QyN2QzNDM1ZTExNTYxNmI4ZWQzNWRjYjQyN2FmNWIwYjFjYzUyNmQzMjY1YTcyZDQ5M2UifX19"}]}}}}
execute if entity @s[tag=ca.webbing] run data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1645455644,-1934670820,-1428628513,339650943],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTgzYjMwZTlkMTM1YjA1MTkwZWVhMmMzYWM2MWUyYWI1NWEyZDgxZTFhNThkYmIyNjk4M2ExNDA4MjY2NCJ9fX0="}]}}}}
execute if entity @s[tag=ca.cursing] run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Wither Melon"}'},SkullOwner:{Id:[I;-621658704,-950974674,-1647852493,-1935243219],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTNmZDljNjMwNjE3MzhkYjJkODNkZDE4MGI4YjUwZjdlOWYyMmUzZTc4NGM0Njc2NzgyMDIwYzU0YzA3ZTY5MiJ9fX0="}]}}} 1


execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:projectiles/behavior/grenade/alchemist_aim


#Change the grenade visual as well if necessary