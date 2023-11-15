#Reimplementation of Percent Health but for Absorption
scoreboard players operation $target_max_health bbl.storage = @s ca.size_max_health

#Get current health
execute store result score $target_health bbl.storage run data get entity @s AbsorptionAmount
execute store result score $slime_test bbl.storage run data get entity @s AbsorptionAmount

execute if score $target_health bbl.storage matches ..0 run function cartographer_mob_abilities:passive/size/shrink/kill_shrink
execute unless score $target_health bbl.storage matches ..0 run function cartographer_mob_abilities:passive/size/shrink/do_shrink