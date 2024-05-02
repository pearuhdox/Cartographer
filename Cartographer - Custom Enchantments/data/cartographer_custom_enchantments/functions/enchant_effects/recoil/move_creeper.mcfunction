scoreboard players add @s ca.lifetime 1

execute if score @s ca.lifetime matches 2 at @p[scores={ca.recoil_time=3,ca.recoil=1},tag=!recoil_checked] rotated as @p[scores={ca.recoil_time=3,ca.recoil=1},tag=!recoil_checked] positioned ~ ~1.3 ~ run tp @s ^ ^ ^0.5
execute if score @s ca.lifetime matches 2 at @p[scores={ca.recoil_time=3,ca.recoil=2},tag=!recoil_checked] rotated as @p[scores={ca.recoil_time=3,ca.recoil=2},tag=!recoil_checked] positioned ~ ~1.1 ~ run tp @s ^ ^ ^0.5
execute if score @s ca.lifetime matches 2 at @p[scores={ca.recoil_time=3,ca.recoil=3},tag=!recoil_checked] rotated as @p[scores={ca.recoil_time=3,ca.recoil=3},tag=!recoil_checked] positioned ~ ~0.9 ~ run tp @s ^ ^ ^0.5
execute if score @s ca.lifetime matches 2 at @p[scores={ca.recoil_time=3,ca.recoil=4},tag=!recoil_checked] rotated as @p[scores={ca.recoil_time=3,ca.recoil=4},tag=!recoil_checked] positioned ~ ~0.7 ~ run tp @s ^ ^ ^0.5
execute if score @s ca.lifetime matches 2 at @p[scores={ca.recoil_time=3,ca.recoil=5..},tag=!recoil_checked] rotated as @p[scores={ca.recoil_time=3,ca.recoil=5},tag=!recoil_checked] positioned ~ ~0.5 ~ run tp @s ^ ^ ^0.5


#Set the tag so the player is no longer counted for other creepers in the same ticks
execute if score @s ca.lifetime matches 2 run tag @p[scores={ca.recoil_time=3},tag=!recoil_checked] add recoil_checked

#execute if score @s ca.lifetime matches 1 run tag @s remove ca.needs_move