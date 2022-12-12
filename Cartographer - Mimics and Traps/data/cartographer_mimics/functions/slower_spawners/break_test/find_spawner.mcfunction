execute if block ~ ~-0.5 ~ minecraft:obsidian run scoreboard players set $break_penalty ca.mimic_var 1
execute if block ~ ~-0.5 ~ minecraft:reinforced_deepslate run scoreboard players set $break_penalty ca.mimic_var 2
execute if block ~ ~-0.5 ~ minecraft:bedrock run scoreboard players set $break_penalty ca.mimic_var 3

scoreboard players set @s ca.raycast 0