scoreboard players set @s ca.trap_tier 0

execute store result score $p_armor ca.trap_tier run attribute @s minecraft:generic.armor get
execute store result score $p_toughness ca.trap_tier run attribute @s minecraft:generic.armor_toughness get
execute store result score $p_health ca.trap_tier run attribute @s minecraft:generic.max_health get
scoreboard players operation $p_health ca.trap_tier *= $2 ca.CONSTANT

scoreboard players set $p_value ca.trap_tier -40
scoreboard players operation $p_value ca.trap_tier += $p_health ca.trap_tier
scoreboard players operation $p_value ca.trap_tier += $p_armor ca.trap_tier
scoreboard players operation $p_value ca.trap_tier += $p_toughness ca.trap_tier

#execute if score @s helper_power matches 6..10 run scoreboard players set @s ca.trap_tier 1
execute if score $p_value ca.trap_tier matches 11..16 run scoreboard players set @s ca.trap_tier 1
execute if score $p_value ca.trap_tier matches 17..22 run scoreboard players set @s ca.trap_tier 2
execute if score $p_value ca.trap_tier matches 23..28 run scoreboard players set @s ca.trap_tier 3
execute if score $p_value ca.trap_tier matches 29..36 run scoreboard players set @s ca.trap_tier 4
execute if score $p_value ca.trap_tier matches 37.. run scoreboard players set @s ca.trap_tier 5