execute as @s[type=armor_stand,tag=cartographer_mimic,tag=!triggered_mimic] at @s unless block ~ ~1 ~ red_stained_glass run function cartographer_mimics:loop/tick/stand_branch
execute as @s[type=armor_stand,tag=cartographer_colossus] at @s if block ~ ~ ~ air run function cartographer_mimics:colossus/animation


execute as @s[type=wither_skeleton,tag=active_mimic] at @s run function cartographer_mimics:loop/tick/wither_branch

execute as @s[type=#bb:hostile,tag=active_colossus,tag=!done_dupe] at @s run function cartographer_mimics:loop/tick/colossus_branch

execute as @s[type=bee,tag=active_colossus] at @s run data modify entity @s AngerTime set value 2147483647

execute as @s[type=item,nbt={Item:{tag:{MimicDeath:1}}}] at @s run function cartographer_mimics:mimic/death
execute as @s[type=item,nbt={Item:{tag:{ColossusDeath:1}}}] at @s run function cartographer_mimics:colossus/death