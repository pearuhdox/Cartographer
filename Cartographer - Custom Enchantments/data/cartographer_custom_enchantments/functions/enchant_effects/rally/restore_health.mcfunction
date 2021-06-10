execute store result score @s ca.rally_rst run attribute @s minecraft:generic.attack_damage get
execute store result score @s ca.rally_crt run attribute @s minecraft:generic.attack_damage get

execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set @s ca.rally_rst 9

scoreboard players operation @s ca.rally_crt *= $10 ca.CONSTANT
scoreboard players operation @s ca.rally_crt /= $2 ca.CONSTANT

scoreboard players operation @s ca.rally_rst *= $10 ca.CONSTANT

execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=false}},tag=can_crit] run scoreboard players operation @s ca.rally_rst += @s ca.rally_crt

scoreboard players operation @s ca.rally_rst *= $25 ca.CONSTANT
scoreboard players operation @s ca.rally_rst /= $100 ca.CONSTANT


scoreboard players operation $test_amt ca.rally_rst = @s ca.rally_rst

execute if entity @s[scores={ca.rally_rst=10..,rally_bank=10..}] run function cartographer_custom_enchantments:enchant_effects/rally/calc_health_recursive

execute if entity @s[scores={rally_bank=..9}] run scoreboard players operation @s rally_overflow += @s rally_bank
execute if entity @s[scores={rally_bank=..9}] run scoreboard players set @s rally_bank 0

execute if entity @s[scores={rally_overflow=10..}] run scoreboard players add @s heal_queue 1
execute if entity @s[scores={rally_overflow=10..}] run scoreboard players remove @s rally_overflow 10

execute if entity @s[scores={heal_queue=1..}] run playsound minecraft:entity.witch.drink player @s ~ ~ ~ 2 2
execute if entity @s[scores={heal_queue=1..}] as @e[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] at @s run particle heart ~ ~1 ~ 0.4 0.1 0.4 0 1 force

execute if entity @s[scores={heal_queue=1..}] run function cartographer_core:helper/heal_player/by_score