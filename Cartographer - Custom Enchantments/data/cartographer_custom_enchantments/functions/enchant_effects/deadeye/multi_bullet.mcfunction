execute if score $deadeye ca.frost matches 1.. run tag @s add ca.frost
execute if score $deadeye ca.flash matches 1.. run tag @s add ca.flash
execute if score $deadeye ca.conductive matches 1.. run tag @s add ca.conductive
execute if score $deadeye ca.rend matches 1.. run tag @s add ca.rend
execute if score $deadeye ca.putrefy matches 1.. run tag @s add ca.putrefy
execute if score $deadeye ca.pin_down matches 1.. run tag @s add pin
execute if score $deadeye ca.flame matches 1.. run tag @s add ca.flame

scoreboard players operation $x_rot_org ca.rotation = $x_rot ca.rotation
scoreboard players operation $z_rot_org ca.rotation = $z_rot ca.rotation

execute store result entity @s[tag=deadeye_multi_1] Rotation[0] float 1 run scoreboard players add $x_rot ca.rotation 12
execute store result entity @s[tag=deadeye_multi_1] Rotation[1] float 1 run scoreboard players add $z_rot ca.rotation 1

scoreboard players operation $x_rot ca.rotation = $x_rot_org ca.rotation
scoreboard players operation $z_rot ca.rotation = $z_rot_org ca.rotation

execute store result entity @s[tag=deadeye_multi_2] Rotation[0] float 1 run scoreboard players remove $x_rot ca.rotation 12
execute store result entity @s[tag=deadeye_multi_2] Rotation[1] float 1 run scoreboard players add $z_rot ca.rotation 1

scoreboard players operation $x_rot ca.rotation = $x_rot_org ca.rotation
scoreboard players operation $z_rot ca.rotation = $z_rot_org ca.rotation

execute store result entity @s[tag=deadeye_multi_3] Rotation[0] float 1 run scoreboard players add $x_rot ca.rotation 24
execute store result entity @s[tag=deadeye_multi_3] Rotation[1] float 1 run scoreboard players add $z_rot ca.rotation 2

scoreboard players operation $x_rot ca.rotation = $x_rot_org ca.rotation
scoreboard players operation $z_rot ca.rotation = $z_rot_org ca.rotation

execute store result entity @s[tag=deadeye_multi_4] Rotation[0] float 1 run scoreboard players remove $x_rot ca.rotation 24
execute store result entity @s[tag=deadeye_multi_4] Rotation[1] float 1 run scoreboard players add $z_rot ca.rotation 2

scoreboard players operation $x_rot ca.rotation = $x_rot_org ca.rotation
scoreboard players operation $z_rot ca.rotation = $z_rot_org ca.rotation

execute store result entity @s[tag=deadeye_multi_7] Rotation[0] float 1 run scoreboard players add $x_rot ca.rotation 0
execute store result entity @s[tag=deadeye_multi_7] Rotation[1] float 1 run scoreboard players add $z_rot ca.rotation 0


scoreboard players set @s ca.raycast 8
execute if score $deadeye ca.trueshot matches 1.. run scoreboard players set @s ca.raycast 12
execute if score $deadeye ca.trueshot matches 1.. run tag @s add trueshotted
execute if score $deadeye ca.curse_encum matches 1.. run scoreboard players set @s ca.raycast 5
execute if score $deadeye ca.curse_encum matches 1.. run tag @s add encumbered

tag @s add queue_to_fire_multi

#execute positioned ~ ~1.2 ~ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_multi
