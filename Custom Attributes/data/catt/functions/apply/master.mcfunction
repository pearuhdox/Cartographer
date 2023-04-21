attribute @s minecraft:generic.movement_speed modifier remove 31203211-9201-2020-1800-000000000000
attribute @s minecraft:generic.attack_speed modifier remove 31203211-9201-2020-1800-000000000000
attribute @s minecraft:generic.attack_damage modifier remove 31203211-9201-2020-1800-000000000000

execute unless score @s catt.stat.speed matches 100 run function catt:apply/speed
execute unless score @s catt.stat.atksp matches 400 run function catt:apply/atkspeed
execute unless score @s catt.stat.atksp matches 100 run function catt:apply/atkdamage
execute unless score @s catt.stat.kbres matches 0 run function catt:apply/kbres