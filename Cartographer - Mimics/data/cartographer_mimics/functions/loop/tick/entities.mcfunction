execute as @s[type=armor_stand,tag=cartographer_mimic,tag=!triggered_mimic] at @s unless block ~ ~1 ~ red_stained_glass run function cartographer_mimics:loop/tick/stand_branch

execute as @s[type=wither_skeleton,tag=active_mimic] at @s run function cartographer_mimics:loop/tick/wither_branch

execute as @s[type=magma_cube,tag=active_mimic] at @s run function cartographer_mimics:loop/tick/magma_branch

execute as @s[type=item,nbt={Item:{tag:{MimicDeath:1}}}] at @s run function cartographer_mimics:mimic/death