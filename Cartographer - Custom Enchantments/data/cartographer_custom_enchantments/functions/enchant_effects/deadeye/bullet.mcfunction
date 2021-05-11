execute if score $deadeye frost matches 1.. run tag @s add frost
execute if score $deadeye flash matches 1.. run tag @s add flash
execute if score $deadeye conductive matches 1.. run tag @s add conductive
execute if score $deadeye rend matches 1.. run tag @s add rend
execute if score $deadeye putrefy matches 1.. run tag @s add putrefy
execute if score $deadeye pin_down matches 1.. run tag @s add pin
execute if score $deadeye flame matches 1.. run tag @s add flame

execute store result entity @s Rotation[0] float 1 run scoreboard players add $x_rot ca.rotation 0
execute store result entity @s Rotation[1] float 1 run scoreboard players add $z_rot ca.rotation 0

tp @s ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,distance=..13,sort=random,nbt={HurtTime:0s}] feet

scoreboard players set @s helper_raycast 13
execute if score $deadeye trueshot matches 1.. run scoreboard players set @s helper_raycast 26
execute if score $deadeye curse_encumber matches 1.. run scoreboard players set @s helper_raycast 8

execute if score $deadeye trueshot matches 1.. run tp @s ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,distance=..26,sort=random,nbt={HurtTime:0s}] feet
execute if score $deadeye curse_encumber matches 1.. run tp @s ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,distance=..8,sort=random,nbt={HurtTime:0s}] feet
execute unless score $deadeye trueshot matches 1.. unless score $deadeye trueshot matches 1.. run tp @s ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,distance=..13,sort=random,nbt={HurtTime:0s}] feet


execute positioned ~ ~1.2 ~ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast
