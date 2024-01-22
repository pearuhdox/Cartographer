attribute @s minecraft:generic.movement_speed modifier remove 31182015-1315-1351-4202-113000000000
attribute @s minecraft:generic.attack_damage modifier remove 31182015-1315-1351-4202-113000000000

execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 1 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.1 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 2 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.2 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 3 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.3 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 4 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.4 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 5 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.5 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 6 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.6 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 7 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.7 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 8 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.8 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 9 run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 0.9 multiply
execute if score @s ca.momentum_charge matches 2000.. if score @s ca.momentum matches 10.. run attribute @s minecraft:generic.attack_damage modifier add 31182015-1315-1351-4202-113000000000 "momentum_damage" 1.0 multiply

scoreboard players operation $momentum_past_tier ca.ench_var = @s ca.momentum_tier

execute if score @s ca.momentum_charge matches 1..339 run scoreboard players set @s ca.momentum_tier 0
execute if score @s ca.momentum_charge matches 400..799 run scoreboard players set @s ca.momentum_tier 1
execute if score @s ca.momentum_charge matches 800..1199 run scoreboard players set @s ca.momentum_tier 2
execute if score @s ca.momentum_charge matches 1200..1599 run scoreboard players set @s ca.momentum_tier 3
execute if score @s ca.momentum_charge matches 1600..1999 run scoreboard players set @s ca.momentum_tier 4
execute if score @s ca.momentum_charge matches 2000.. run scoreboard players set @s ca.momentum_tier 5

execute if score @s ca.momentum_tier matches 1 if score $momentum_past_tier ca.ench_var matches 0 run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 0.15 1.6
execute if score @s ca.momentum_tier matches 2 if score $momentum_past_tier ca.ench_var matches 1 run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 0.15 1.7
execute if score @s ca.momentum_tier matches 3 if score $momentum_past_tier ca.ench_var matches 2 run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 0.15 1.8
execute if score @s ca.momentum_tier matches 4 if score $momentum_past_tier ca.ench_var matches 3 run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 0.15 1.9
execute if score @s ca.momentum_tier matches 5.. if score $momentum_past_tier ca.ench_var matches 4 run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 0.4 2

execute if score @s ca.momentum_tier matches 1 if predicate cartographer_custom_enchantments:is_sprinting run playsound minecraft:entity.horse.breathe player @s ~ ~ ~ 0.05 1
execute if score @s ca.momentum_tier matches 2 if predicate cartographer_custom_enchantments:is_sprinting run playsound minecraft:entity.horse.breathe player @s ~ ~ ~ 0.15 1
execute if score @s ca.momentum_tier matches 3 if predicate cartographer_custom_enchantments:is_sprinting run playsound minecraft:entity.horse.breathe player @s ~ ~ ~ 0.25 1
execute if score @s ca.momentum_tier matches 4 if predicate cartographer_custom_enchantments:is_sprinting run playsound minecraft:entity.horse.breathe player @s ~ ~ ~ 0.35 1


execute if score @s ca.momentum_tier matches 1 run attribute @s minecraft:generic.movement_speed modifier add 31182015-1315-1351-4202-113000000000 "momentum_speed" 0.04 multiply
execute if score @s ca.momentum_tier matches 2 run attribute @s minecraft:generic.movement_speed modifier add 31182015-1315-1351-4202-113000000000 "momentum_speed" 0.08 multiply
execute if score @s ca.momentum_tier matches 3 run attribute @s minecraft:generic.movement_speed modifier add 31182015-1315-1351-4202-113000000000 "momentum_speed" 0.12 multiply
execute if score @s ca.momentum_tier matches 4 run attribute @s minecraft:generic.movement_speed modifier add 31182015-1315-1351-4202-113000000000 "momentum_speed" 0.16 multiply
execute if score @s ca.momentum_tier matches 5.. run attribute @s minecraft:generic.movement_speed modifier add 31182015-1315-1351-4202-113000000000 "momentum_speed" 0.2 multiply

execute if score @s ca.momentum_tier matches 5.. run attribute @s minecraft:player.entity_interaction_range modifier add 31182015-1315-1351-4202-113000000000 "momentum_reach" 0.5 add
