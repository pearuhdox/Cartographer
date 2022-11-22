execute if score $blazing ca.trap_traits matches 1.. run tag @s add ca.blazing
execute if score $glacial ca.trap_traits matches 1.. run tag @s add ca.glacial
execute if score $overloading ca.trap_traits matches 1.. run tag @s add ca.overloading
execute if score $venemous ca.trap_traits matches 1.. run tag @s add ca.venemous
execute if score $zephyrous ca.trap_traits matches 1.. run tag @s add ca.zephyrous
execute if score $horrifying ca.trap_traits matches 1.. run tag @s add ca.horrifying
execute if score $celestial ca.trap_traits matches 1.. run tag @s add ca.celestial
execute if score $alchemist ca.trap_traits matches 1.. run tag @s add ca.alchemist
execute if score $webbing ca.trap_traits matches 1.. run tag @s add ca.webbing
execute if score $cursing ca.trap_traits matches 1.. run tag @s add ca.cursing


execute if score $volatile ca.trap_traits matches 1.. run tag @s add ca.volatile

execute if score $blazing ca.trap_traits matches 1.. run data modify entity @s Particle set value "flame"
execute if score $glacial ca.trap_traits matches 1.. run data modify entity @s Particle set value "item_snowball"
execute if score $overloading ca.trap_traits matches 1.. run data modify entity @s Particle set value "electric_spark"
execute if score $venemous ca.trap_traits matches 1.. run data modify entity @s Particle set value "item_slime"
execute if score $zephyrous ca.trap_traits matches 1.. run data modify entity @s Particle set value "cloud"
execute if score $horrifying ca.trap_traits matches 1.. run data modify entity @s Particle set value "sculk_soul"
execute if score $celestial ca.trap_traits matches 1.. run data modify entity @s Particle set value "soul_fire_flame"
execute if score $volatile ca.trap_traits matches 1.. run data modify entity @s Particle set value "smoke"
execute if score $webbing ca.trap_traits matches 1.. run data modify entity @s Particle set value "block white_wool"
execute if score $cursing ca.trap_traits matches 1.. run data modify entity @s Particle set value "witch"

execute if score $alchemist ca.trap_traits matches 1.. run data modify entity @s Particle set value "effect"

execute if score $alchemist ca.trap_traits matches 1.. run function cartographer_mob_abilities:projectiles/behavior/trap/cloud/alchemist_apply

scoreboard players operation @s ca.ability_dmg = $damage ca.trap_traits

execute if entity @s[tag=passive_trap_cloud] run scoreboard players add @s ca.lifetime 20

tag @s remove ca.new_trap_cloud