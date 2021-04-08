execute if entity @s[scores={ca.atk_time=0,evocation=1..,helper_sprint=0..,helper_sneak=0},tag=can_crit] run function cartographer_custom_enchantments:enchant_effects/evocation_cage
execute if entity @s[scores={ca.atk_time=0,evocation=1..,helper_sprint=1..,helper_sneak=0},tag=!can_crit] run function cartographer_custom_enchantments:enchant_effects/evocation_spear
execute if entity @s[scores={ca.atk_time=0,evocation=1..,helper_sneak=1..}] run function cartographer_custom_enchantments:enchant_effects/evocation_wave

execute if entity @s[scores={ca.atk_time=0,evocation=1..},tag=can_crit] run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={ca.atk_time=0,evocation=1..,helper_sprint=1..},tag=!can_crit] run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..8] ~ ~ ~ 0.5 2
execute if entity @s[scores={ca.atk_time=0,evocation=1..,helper_sneak=1..}] run playsound minecraft:entity.evoker.prepare_attack player @a[distance=..8] ~ ~ ~ 0.5 2

scoreboard players set @s[scores={ca.atk_time=0,evocation=1},tag=can_crit] ca.evo_burn 70
scoreboard players set @s[scores={ca.atk_time=0,evocation=1,helper_sprint=1..}] ca.evo_burn 70
scoreboard players set @s[scores={ca.atk_time=0,evocation=1,helper_sneak=1..}] ca.evo_burn 70

scoreboard players set @s[scores={ca.atk_time=0,evocation=2},tag=can_crit] ca.evo_burn 40
scoreboard players set @s[scores={ca.atk_time=0,evocation=2,helper_sprint=1..}] ca.evo_burn 40
scoreboard players set @s[scores={ca.atk_time=0,evocation=2,helper_sneak=1..}] ca.evo_burn 40

scoreboard players set @s[scores={ca.atk_time=0,evocation=3..},tag=can_crit] ca.evo_burn 20
scoreboard players set @s[scores={ca.atk_time=0,evocation=3..,helper_sprint=1..}] ca.evo_burn 20
scoreboard players set @s[scores={ca.atk_time=0,evocation=3..,helper_sneak=1..}] ca.evo_burn 20

#Debug Message
tellraw @a[tag=debug,scores={evocation=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Evocation.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]