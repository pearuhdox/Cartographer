execute if score $deadeye ca.frost matches 1.. run tag @s add ca.frost
execute if score $deadeye ca.flash matches 1.. run tag @s add ca.flash
execute if score $deadeye ca.electrode matches 1.. run tag @s add ca.electrode
execute if score $deadeye ca.bleed matches 1.. run tag @s add ca.bleed
execute if score $deadeye ca.infect matches 1.. run tag @s add ca.infect
execute if score $deadeye ca.expose matches 1.. run tag @s add pin
execute if score $deadeye ca.flame matches 1.. run tag @s add ca.flame

execute store result entity @s Rotation[0] float 1 run scoreboard players add $x_rot ca.rotation 0
execute store result entity @s Rotation[1] float 1 run scoreboard players add $z_rot ca.rotation 0

tp @s ~ ~ ~ facing entity @e[limit=1,type=#bb:hostile,distance=..13,sort=random,nbt={HurtTime:0s}] feet

scoreboard players set @s ca.raycast 13
execute if score $deadeye ca.trueshot matches 1.. run scoreboard players set @s ca.raycast 26
execute if score $deadeye ca.curse_encum matches 1.. run scoreboard players set @s ca.raycast 8

execute if score $deadeye ca.trueshot matches 1.. run tp @s ~ ~ ~ facing entity @e[limit=1,type=#bb:hostile,distance=..26,sort=random,nbt={HurtTime:0s}] feet
execute if score $deadeye ca.curse_encum matches 1.. run tp @s ~ ~ ~ facing entity @e[limit=1,type=#bb:hostile,distance=..8,sort=random,nbt={HurtTime:0s}] feet
execute unless score $deadeye ca.trueshot matches 1.. unless score $deadeye ca.trueshot matches 1.. run tp @s ~ ~ ~ facing entity @e[limit=1,type=#bb:hostile,distance=..13,sort=random,nbt={HurtTime:0s}] feet

tag @s add queue_to_fire_single

#execute positioned ~ ~1.2 ~ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast
