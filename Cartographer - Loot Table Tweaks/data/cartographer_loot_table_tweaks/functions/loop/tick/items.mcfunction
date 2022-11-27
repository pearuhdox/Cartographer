execute if entity @s[tag=!processed_ltt,nbt={Item:{tag:{Medkit:1b}}}] run function cartographer_loot_table_tweaks:powerups/medkits/setup
execute if entity @s[tag=!processed_ltt,nbt={Item:{tag:{Medipack:1b}}}] run function cartographer_loot_table_tweaks:powerups/medkits/big_setup

execute if entity @s[tag=ca.powerup_medkit] if entity @a[distance=..1] at @p run function cartographer_loot_table_tweaks:powerups/medkits/use
execute if entity @s[tag=ca.powerup_big_medkit] if entity @a[distance=..1] at @p run function cartographer_loot_table_tweaks:powerups/medkits/big_use

tag @s add processed_ltt