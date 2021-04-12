execute if score $deadeye frost matches 1.. run tag @s add frost
execute if score $deadeye flash matches 1.. run tag @s add flash
execute if score $deadeye conductive matches 1.. run tag @s add conductive
execute if score $deadeye rend matches 1.. run tag @s add rend
execute if score $deadeye putrefy matches 1.. run tag @s add putrefy
execute if score $deadeye pin_down matches 1.. run tag @s add pin
execute if score $deadeye flame matches 1.. run tag @s add flame

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


scoreboard players set @s helper_raycast 8
execute if score $deadeye trueshot matches 1.. run scoreboard players set @s helper_raycast 12
execute if score $deadeye trueshot matches 1.. run tag @s add trueshotted
execute if score $deadeye curse_encumber matches 1.. run scoreboard players set @s helper_raycast 5
execute if score $deadeye curse_encumber matches 1.. run tag @s add encumbered

execute as @s at @s positioned ~ ~1.2 ~ run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast_multi
