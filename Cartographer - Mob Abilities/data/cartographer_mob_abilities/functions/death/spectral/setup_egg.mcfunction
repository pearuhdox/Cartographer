execute if data storage cartographer_mob_abilities:death_effects data.Offhand.id run data modify entity @s Item set from storage cartographer_mob_abilities:death_effects data.Offhand

execute if score $ins_spectral ca.mob_var matches 1.. run data modify entity @s Glowing set value 0b
execute if score $ins_spectral ca.mob_var matches 1.. run scoreboard players set @s ca.lifetime 100