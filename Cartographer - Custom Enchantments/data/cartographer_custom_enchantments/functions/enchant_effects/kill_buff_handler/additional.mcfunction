scoreboard players set @s[scores={ca.adrenaline_dur=1}] ca.adrenaline_dur 0
scoreboard players set @s[scores={ca.frenzy_dur=1}] ca.frenzy_dur 0
scoreboard players set @s[scores={ca.energetic_dur=1}] ca.energetic_dur 0
scoreboard players set @s[scores={ca.lifeblood_dur=1}] ca.lifeblood_dur 0

scoreboard players remove @s[scores={ca.adrenaline_dur=1..}] ca.adrenaline_dur 1
scoreboard players remove @s[scores={ca.frenzy_dur=1..}] ca.frenzy_dur 1
scoreboard players remove @s[scores={ca.energetic_dur=1..}] ca.energetic_dur 1
scoreboard players remove @s[scores={ca.lifeblood_dur=1..}] ca.lifeblood_dur 1

#execute if score @s ca.conceal_time matches 19.. run effect give @s invisibility 1 1 true
scoreboard players remove @s[scores={ca.conceal_time=1..}] ca.conceal_time 1

#execute if score @s ca.conceal_time matches 1.. run particle minecraft:smoke ~ ~0.1 ~ 0.15 0.1 0.15 0.025 1 normal


#Break Concealed
execute as @a[scores={ca.conceal_time=1}] at @s run function cartographer_custom_enchantments:enchant_effects/concealed/consume


scoreboard players operation $mod ca.adrenaline_dur = @s ca.adrenaline_dur
scoreboard players operation $mod ca.frenzy_dur = @s ca.frenzy_dur
scoreboard players operation $mod ca.energetic_dur = @s ca.energetic_dur

scoreboard players operation $mod ca.adrenaline_dur %= $20 ca.CONSTANT
scoreboard players operation $mod ca.frenzy_dur %= $20 ca.CONSTANT
scoreboard players operation $mod ca.energetic_dur %= $20 ca.CONSTANT

execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 0 positioned ~ ~ ~ rotated 0 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 1 positioned ~ ~ ~ rotated 18 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 2 positioned ~ ~ ~ rotated 36 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 3 positioned ~ ~ ~ rotated 54 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 4 positioned ~ ~ ~ rotated 72 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 5 positioned ~ ~ ~ rotated 90 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 6 positioned ~ ~ ~ rotated 108 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 7 positioned ~ ~ ~ rotated 126 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 8 positioned ~ ~ ~ rotated 144 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 9 positioned ~ ~ ~ rotated 162 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 10 positioned ~ ~ ~ rotated 180 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 11 positioned ~ ~ ~ rotated 198 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 12 positioned ~ ~ ~ rotated 216 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 13 positioned ~ ~ ~ rotated 234 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 14 positioned ~ ~ ~ rotated 252 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 15 positioned ~ ~ ~ rotated 270 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 16 positioned ~ ~ ~ rotated 288 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 17 positioned ~ ~ ~ rotated 306 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 18 positioned ~ ~ ~ rotated 324 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.adrenaline_dur matches 1.. if score $mod ca.adrenaline_dur matches 19 positioned ~ ~ ~ rotated 342 0 run particle minecraft:dust 0 0.8 1 1 ^ ^ ^0.6 0 0 0 0 1 force


execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 7 positioned ~ ~ ~ rotated 0 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 8 positioned ~ ~ ~ rotated 18 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 9 positioned ~ ~ ~ rotated 36 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 10 positioned ~ ~ ~ rotated 54 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 11 positioned ~ ~ ~ rotated 72 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 12 positioned ~ ~ ~ rotated 90 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 13 positioned ~ ~ ~ rotated 108 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 14 positioned ~ ~ ~ rotated 126 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 15 positioned ~ ~ ~ rotated 144 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 16 positioned ~ ~ ~ rotated 162 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 17 positioned ~ ~ ~ rotated 180 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 18 positioned ~ ~ ~ rotated 198 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 19 positioned ~ ~ ~ rotated 216 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 0 positioned ~ ~ ~ rotated 234 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 1 positioned ~ ~ ~ rotated 252 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 2 positioned ~ ~ ~ rotated 270 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 3 positioned ~ ~ ~ rotated 288 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 4 positioned ~ ~ ~ rotated 306 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 5 positioned ~ ~ ~ rotated 324 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.frenzy_dur matches 1.. if score $mod ca.frenzy_dur matches 6 positioned ~ ~ ~ rotated 342 0 run particle minecraft:dust 0.8 0 0 1 ^ ^ ^0.6 0 0 0 0 1 force


execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 14 positioned ~ ~ ~ rotated 0 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 15 positioned ~ ~ ~ rotated 18 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 16 positioned ~ ~ ~ rotated 36 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 17 positioned ~ ~ ~ rotated 54 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 18 positioned ~ ~ ~ rotated 72 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 19 positioned ~ ~ ~ rotated 90 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 0 positioned ~ ~ ~ rotated 108 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 1 positioned ~ ~ ~ rotated 126 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 2 positioned ~ ~ ~ rotated 144 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 3 positioned ~ ~ ~ rotated 162 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 4 positioned ~ ~ ~ rotated 180 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 5 positioned ~ ~ ~ rotated 198 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 6 positioned ~ ~ ~ rotated 216 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 7 positioned ~ ~ ~ rotated 234 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 8 positioned ~ ~ ~ rotated 252 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 9 positioned ~ ~ ~ rotated 270 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 10 positioned ~ ~ ~ rotated 288 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 11 positioned ~ ~ ~ rotated 306 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 12 positioned ~ ~ ~ rotated 324 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force
execute if score @s ca.energetic_dur matches 1.. if score $mod ca.energetic_dur matches 13 positioned ~ ~ ~ rotated 342 0 run particle minecraft:dust 0.988 0.933 0.459 1 ^ ^ ^0.6 0 0 0 0 1 force


execute if score @s ca.adrenaline_dur matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 31-119-1212-2216-0
execute if score @s ca.frenzy_dur matches 0 run attribute @s minecraft:generic.attack_damage modifier remove 31-119-1212-2216-0
execute if score @s ca.lifeblood_dur matches 0 run attribute @s minecraft:generic.armor modifier remove 31-119-1212-2216-0

tag @s add kill_buff_checked