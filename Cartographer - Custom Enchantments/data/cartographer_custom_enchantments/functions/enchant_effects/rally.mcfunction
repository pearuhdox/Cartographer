execute if entity @s[scores={rally=1}] run scoreboard players set @s rally_percent 15
execute if entity @s[scores={rally=2}] run scoreboard players set @s rally_percent 25
execute if entity @s[scores={rally=3}] run scoreboard players set @s rally_percent 35
execute if entity @s[scores={rally=4}] run scoreboard players set @s rally_percent 45
execute if entity @s[scores={rally=5}] run scoreboard players set @s rally_percent 50
execute if entity @s[scores={rally=6}] run scoreboard players set @s rally_percent 55
execute if entity @s[scores={rally=7}] run scoreboard players set @s rally_percent 60
execute if entity @s[scores={rally=8}] run scoreboard players set @s rally_percent 65
execute if entity @s[scores={rally=9}] run scoreboard players set @s rally_percent 70
execute if entity @s[scores={rally=10..}] run scoreboard players set @s rally_percent 75

scoreboard players operation @s ca.rally_amt *= @s rally_percent

scoreboard players operation @s ca.rally_amt /= $100 ca.CONSTANT

scoreboard players set @s rally_time 51

scoreboard players set @s rally_bank 0
scoreboard players operation @s rally_bank = @s ca.rally_amt

playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.6 0.8