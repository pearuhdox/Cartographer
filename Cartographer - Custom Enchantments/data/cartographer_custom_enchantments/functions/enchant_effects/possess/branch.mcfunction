attribute @s minecraft:generic.max_health modifier add 3-5-24-5-3 "execution_check" 0 add
execute store result score $health_max ca.possess run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 10
execute store result score $health_low ca.possess run data get entity @s Health 10000
scoreboard players operation $health_low ca.possess /= $health_max ca.possession

scoreboard players operation $chance_add ca.possess = $1000 ca.CONSTANT
scoreboard players operation $chance_add ca.possess -= $health_low ca.possession

scoreboard players operation $chance_add ca.possess /= $10 ca.CONSTANT
scoreboard players operation $chance_add ca.possess /= $2 ca.CONSTANT
scoreboard players operation $chance_add ca.possess /= $2 ca.CONSTANT
execute if score $chance_add ca.possess matches 16.. run scoreboard players set $chance_add ca.possess 15


execute if score $health_low ca.possess matches ..670 run function cartographer_custom_enchantments:enchant_effects/possess/chance