#Loops every second

#Slowly anger mimics the player is near. Lower their anger if no player is near.
execute as @a at @s run execute if entity @e[tag=hidden_mimic,distance=..5] run execute as @e[tag=hidden_mimic,distance=..5] at @s run function preyshock:mimic/anger

execute as @e[tag=hidden_mimic] at @s run execute unless entity @a[distance=..5] run scoreboard players remove @s[scores={mimic_anger=1..}] mimic_anger 1

#If a mimic reaches anger 5, it transforms.
execute as @e[tag=hidden_mimic,scores={mimic_anger=5..}] at @s run function preyshock:mimic/transform

#Loop Function
schedule function preyshock:loop/1_second/base 1s