execute if score $blazing ca.death_traits matches 1.. run tag @s add ca.blazing
execute if score $glacial ca.death_traits matches 1.. run tag @s add ca.glacial
execute if score $overloading ca.death_traits matches 1.. run tag @s add ca.overloading
execute if score $venemous ca.death_traits matches 1.. run tag @s add ca.venemous
execute if score $zephyrous ca.death_traits matches 1.. run tag @s add ca.zephyrous
execute if score $horrifying ca.death_traits matches 1.. run tag @s add ca.horrifying
execute if score $celestial ca.death_traits matches 1.. run tag @s add ca.celestial
execute if score $webbing ca.death_traits matches 1.. run tag @s add ca.webbing
execute if score $cursing ca.death_traits matches 1.. run tag @s add ca.cursing

execute if score $blazing ca.death_traits matches 1.. run data modify entity @s Particle set value "flame"
execute if score $glacial ca.death_traits matches 1.. run data modify entity @s Particle set value "item_snowball"
execute if score $overloading ca.death_traits matches 1.. run data modify entity @s Particle set value "electric_spark"
execute if score $venemous ca.death_traits matches 1.. run data modify entity @s Particle set value "item_slime"
execute if score $zephyrous ca.death_traits matches 1.. run data modify entity @s Particle set value "cloud"
execute if score $horrifying ca.death_traits matches 1.. run data modify entity @s Particle set value "sculk_soul"
execute if score $celestial ca.death_traits matches 1.. run data modify entity @s Particle set value "soul_fire_flame"
execute if score $webbing ca.death_traits matches 1.. run data modify entity @s Particle set value "block white_wool"
execute if score $cursing ca.death_traits matches 1.. run data modify entity @s Particle set value "witch"

tag @s remove ca.new_cloud