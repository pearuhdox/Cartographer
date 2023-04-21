data modify storage catt:mob_armor values set value []
data modify storage catt:mob_armor values set from entity @s ArmorItems

scoreboard players set @s catt.proj_prot 0

execute store result score $temp catt.var run data get storage catt:mob_armor values[0].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation @s catt.proj_prot += $temp catt.var

execute store result score $temp catt.var run data get storage catt:mob_armor values[1].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation @s catt.proj_prot += $temp catt.var

execute store result score $temp catt.var run data get storage catt:mob_armor values[2].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation @s catt.proj_prot += $temp catt.var

execute store result score $temp catt.var run data get storage catt:mob_armor values[3].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
scoreboard players operation @s catt.proj_prot += $temp catt.var

scoreboard players operation @s catt.proj_prot *= $8 catt.var
execute if score @s catt.proj_prot matches 81.. run scoreboard players set @s catt.proj_prot 80