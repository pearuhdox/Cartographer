function cartographer_core:helper/randomize

scoreboard players operation @s helper_evade = @s random
scoreboard players operation @s helper_evade -= @s evasion_bias

scoreboard players set @s[scores={helper_evade=..0}] helper_evade 1

execute if entity @s[scores={evasion=1,helper_evade=1..4}] run tag @s add evading
execute if entity @s[scores={evasion=2,helper_evade=1..8}] run tag @s add evading
execute if entity @s[scores={evasion=3,helper_evade=1..12}] run tag @s add evading
execute if entity @s[scores={evasion=4,helper_evade=1..16}] run tag @s add evading
execute if entity @s[scores={evasion=5,helper_evade=1..20}] run tag @s add evading
execute if entity @s[scores={evasion=6,helper_evade=1..24}] run tag @s add evading
execute if entity @s[scores={evasion=7,helper_evade=1..28}] run tag @s add evading
execute if entity @s[scores={evasion=8,helper_evade=1..32}] run tag @s add evading
execute if entity @s[scores={evasion=9,helper_evade=1..36}] run tag @s add evading
execute if entity @s[scores={evasion=10,helper_evade=1..40}] run tag @s add evading
execute if entity @s[scores={evasion=11,helper_evade=1..44}] run tag @s add evading
execute if entity @s[scores={evasion=12,helper_evade=1..48}] run tag @s add evading
execute if entity @s[scores={evasion=13,helper_evade=1..52}] run tag @s add evading
execute if entity @s[scores={evasion=14,helper_evade=1..56}] run tag @s add evading
execute if entity @s[scores={evasion=15,helper_evade=1..60}] run tag @s add evading
execute if entity @s[scores={evasion=16,helper_evade=1..64}] run tag @s add evading
execute if entity @s[scores={evasion=17,helper_evade=1..68}] run tag @s add evading
execute if entity @s[scores={evasion=18,helper_evade=1..72}] run tag @s add evading
execute if entity @s[scores={evasion=19,helper_evade=1..76}] run tag @s add evading
execute if entity @s[scores={evasion=20,helper_evade=1..80}] run tag @s add evading

execute unless entity @s[tag=evading] run scoreboard players add @s evasion_bias 4
execute unless entity @s[tag=evading] run scoreboard players set @s[scores={evasion_bias=20..}] evasion_bias 20
execute if entity @s[tag=evading] run scoreboard players set @s evasion_bias 0