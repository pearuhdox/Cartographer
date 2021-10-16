scoreboard players remove @s ca.rally_rst 10
scoreboard players remove @s ca.ral_bank 10

scoreboard players add @s ca.ral_charge 1

execute if entity @s[scores={ca.rally_rst=10..,ca.ral_bank=10..}] run function cartographer_custom_enchantments:enchant_effects/rally/calc_health_recursive