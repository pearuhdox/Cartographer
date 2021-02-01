
execute as @e[type=armor_stand,tag=cartographer_mimic] at @s run execute unless block ~ ~1 ~ red_stained_glass run function cartographer_mimics:loop/tick/stand_branch

scoreboard players set @a[scores={helper_open_trap=1..}] helper_open_trap 0


execute unless entity @e[type=wither_skeleton,tag=active_mimic] run bossbar set cartographer:mimic players

execute as @e[type=wither_skeleton,tag=active_mimic] at @s run function cartographer_mimics:loop/tick/wither_branch


execute as @e[type=item,nbt={Item:{tag:{MimicDeath:1}}}] at @s run function cartographer_mimics:mimic/death

execute as @e[type=armor_stand,tag=mimic_loot_tracker] at @s run function cartographer_mimics:loot_tracker/hopper_fix