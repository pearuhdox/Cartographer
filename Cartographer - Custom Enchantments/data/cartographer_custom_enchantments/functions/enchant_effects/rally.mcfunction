execute if entity @s[scores={ca.rally=1}] run scoreboard players set @s ca.ral_percent 10
execute if entity @s[scores={ca.rally=2}] run scoreboard players set @s ca.ral_percent 20
execute if entity @s[scores={ca.rally=3}] run scoreboard players set @s ca.ral_percent 30
execute if entity @s[scores={ca.rally=4}] run scoreboard players set @s ca.ral_percent 40
execute if entity @s[scores={ca.rally=5}] run scoreboard players set @s ca.ral_percent 50
execute if entity @s[scores={ca.rally=6}] run scoreboard players set @s ca.ral_percent 60
execute if entity @s[scores={ca.rally=7}] run scoreboard players set @s ca.ral_percent 70
execute if entity @s[scores={ca.rally=8}] run scoreboard players set @s ca.ral_percent 80
execute if entity @s[scores={ca.rally=9}] run scoreboard players set @s ca.ral_percent 90
execute if entity @s[scores={ca.rally=10..}] run scoreboard players set @s ca.ral_percent 100

scoreboard players operation @s ca.rally_amt *= @s ca.ral_percent

scoreboard players operation @s ca.rally_amt /= $100 ca.CONSTANT

execute unless score @s ca.ral_time matches 1.. run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.6 0.8
execute if score @s ca.ral_time matches 1.. run scoreboard players set @s ca.ral_charge 0

scoreboard players set @s ca.ral_time 51

scoreboard players set @s ca.ral_bank 0
scoreboard players operation @s ca.ral_bank = @s ca.rally_amt