#Reimplementation of Percent Health but for Absorption
execute store result score $target_max_health bbl.storage run attribute @s minecraft:generic.max_health get
#Get player's current health
execute store result score $target_health bbl.storage run data get entity @s AbsorptionAmount
execute store result score $slime_test bbl.storage run data get entity @s AbsorptionAmount

execute if score $target_health bbl.storage matches ..0 run function cartographer_mob_abilities:passive/size/shrink/kill_shrink
execute unless score $target_health bbl.storage matches ..0 run function cartographer_mob_abilities:passive/size/shrink/do_shrink