execute if score @s ca.cs_id matches 1.. if score @s ca.cs_dur matches 1.. if score @s ca.cs_pot matches 0.. run function cartographer_mob_abilities:passive/projectile/apply_custom_shulker_effect

scoreboard players set $shoot_custom_bullet ca.var 0

execute unless score $csb_data ca.cs_id matches 25 run tag @p add clear_levitation