#Get Cartesian Values in scores
execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[1] store result score $dx ca.needle_convert run data get storage cartographer_mob_abilities:passive_projectile Projectile.power[0] 100
execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[1] store result score $dy ca.needle_convert run data get storage cartographer_mob_abilities:passive_projectile Projectile.power[1] 100
execute if data storage cartographer_mob_abilities:passive_projectile Projectile.power[1] store result score $dz ca.needle_convert run data get storage cartographer_mob_abilities:passive_projectile Projectile.power[2] 100

execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[1] store result score $dx ca.needle_convert run data get storage cartographer_mob_abilities:passive_projectile Projectile.Motion[0] 100
execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[1] store result score $dy ca.needle_convert run data get storage cartographer_mob_abilities:passive_projectile Projectile.Motion[1] 100
execute unless data storage cartographer_mob_abilities:passive_projectile Projectile.power[1] store result score $dz ca.needle_convert run data get storage cartographer_mob_abilities:passive_projectile Projectile.Motion[2] 100

execute store result score $x ca.needle_convert run data get entity @s Pos[0] 100
execute store result score $y ca.needle_convert run data get entity @s Pos[1] 100
execute store result score $z ca.needle_convert run data get entity @s Pos[2] 100

scoreboard players operation $tx ca.needle_convert = $x ca.needle_convert
scoreboard players operation $ty ca.needle_convert = $y ca.needle_convert
scoreboard players operation $tz ca.needle_convert = $z ca.needle_convert

scoreboard players operation $tx ca.needle_convert += $dx ca.needle_convert
scoreboard players operation $ty ca.needle_convert += $dy ca.needle_convert
scoreboard players operation $tz ca.needle_convert += $dz ca.needle_convert

tp 0000001f-00de-140d-0000-0000000276ef @s

execute store result entity 0000001f-00de-140d-0000-0000000276ef Pos[0] double 0.01 run scoreboard players add $tx ca.needle_convert 0
execute store result entity 0000001f-00de-140d-0000-0000000276ef Pos[1] double 0.01 run scoreboard players add $ty ca.needle_convert 0
execute store result entity 0000001f-00de-140d-0000-0000000276ef Pos[2] double 0.01 run scoreboard players add $tz ca.needle_convert 0

tp @s ~ ~ ~ facing entity 0000001f-00de-140d-0000-0000000276ef feet
execute rotated as @s run tp @s ~ ~ ~ ~ 0

tp 0000001f-00de-140d-0000-0000000276ef 4206900 50 4206900

scoreboard players set @s ca.raycast 120
function cartographer_mob_abilities:passive/projectile/helper/lower_rift_to_ground

scoreboard players operation @s ca.ability_dmg = $projectile_damage ca.ability_dmg

data modify entity @s Tags set from storage cartographer_mob_abilities:projectile_tag_save Tags
data modify entity @s Tags append value "ca.rift_projectile"
data modify entity @s Tags append value "rift_passive"

execute if entity @s[tag=ca.alchemist] run data modify entity @s ArmorItems[0] set from storage cartographer_mob_abilities:alchemist PotionCopy

scoreboard players set @s ca.lifetime -2