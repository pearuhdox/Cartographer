execute store result score $temp ca.ma_epf_blast run data get storage cartographer_mob_abilities:epf_calc body[{id:"minecraft:blast_protection"}].lvl
execute if score $temp ca.ma_epf_blast matches 1.. run scoreboard players operation @s ca.ma_epf_blast += $temp ca.ma_epf_blast

execute store result score $temp ca.ma_epf_fire run data get storage cartographer_mob_abilities:epf_calc body[{id:"minecraft:fire_protection"}].lvl
execute if score $temp ca.ma_epf_fire matches 1.. run scoreboard players operation @s ca.ma_epf_fire += $temp ca.ma_epf_fire

execute store result score $temp ca.ma_epf_proj run data get storage cartographer_mob_abilities:epf_calc body[{id:"minecraft:projectile_protection"}].lvl
execute if score $temp ca.ma_epf_proj matches 1.. run scoreboard players operation @s ca.ma_epf_proj += $temp ca.ma_epf_proj
