execute if entity @e[tag=cartographer_mimic] run execute as @e[tag=cartographer_mimic] at @s run execute unless block ~ ~1 ~ red_stained_glass run execute if entity @p[gamemode=!creative,distance=..6,scores={helper_open_trap=1..},nbt=!{ActiveEffects:[{Id:14b}]},predicate=!cartographer_mimics:mimic_disguised] run function cartographer_mimics:mimic/summon_trap
execute if entity @e[tag=cartographer_mimic] run execute as @e[tag=cartographer_mimic] at @s run execute unless block ~ ~1 ~ red_stained_glass run execute if block ~ ~ ~ air run function cartographer_mimics:mimic/summon_hurt
execute if entity @e[tag=cartographer_mimic] run execute as @e[tag=cartographer_mimic] at @s run execute unless block ~ ~1 ~ red_stained_glass run execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..0.8,nbt={inGround:1b}] run function cartographer_mimics:mimic/summon_hurt


scoreboard players set @a[scores={helper_open_trap=1..}] helper_open_trap 0

execute if entity @e[tag=active_mimic] store result bossbar cartographer:mimic value run data get entity @e[tag=active_mimic,limit=1,sort=nearest] Health
execute as @e[tag=active_mimic] at @s run bossbar set cartographer:mimic players @a[distance=..20]
execute unless entity @e[tag=active_mimic] run bossbar set cartographer:mimic players

execute if entity @e[tag=active_mimic,nbt={HurtTime:9s}] run execute as @e[tag=active_mimic,nbt={HurtTime:9s}] at @s run function cartographer_mimics:mimic/hurt_sound

execute if entity @e[tag=active_mimic] run execute as @e[tag=active_mimic] run execute store result score @s mimic_health run data get entity @s Health

execute if entity @e[tag=active_mimic,tag=!enraged,scores={mimic_health=..60}] run execute as @e[tag=active_mimic,tag=!enraged,scores={mimic_health=..60}] at @s run function cartographer_mimics:mimic/enrage


execute if entity @e[type=item,nbt={Item:{tag:{MimicDeath:1}}}] run execute as @e[type=item,nbt={Item:{tag:{MimicDeath:1}}}] at @s run function cartographer_mimics:mimic/death

execute as @e[type=armor_stand,tag=mimic_loot_tracker] at @s run data merge block ~1 ~-1 ~ {TransferCooldown:0}

schedule function cartographer_mimics:loop/tick/base 1t