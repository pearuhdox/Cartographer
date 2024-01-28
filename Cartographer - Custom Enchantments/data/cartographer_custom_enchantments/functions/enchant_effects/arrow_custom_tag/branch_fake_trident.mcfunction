scoreboard players operation $current ca.var = @s ca.current
scoreboard players operation $ricochet ca.var = @s ca.ricochet
scoreboard players operation $collapse ca.var = @s ca.collapse
scoreboard players operation $wavedash ca.var = @s ca.wavedash
scoreboard players operation $loyalty ca.var = @s ca.loyalty

scoreboard players operation $cauterize ca.var = @s ca.cauterize
scoreboard players operation $executioner ca.var = @s ca.executioner
scoreboard players operation $first_strike ca.var = @s ca.first_strike
scoreboard players operation $hex_eater ca.var = @s ca.hex_eater
scoreboard players operation $tempo_theft ca.var = @s ca.tempo_theft

scoreboard players operation $fire_aspect ca.var = @s ca.fire_aspect
scoreboard players operation $duelist ca.var = @s ca.duelist
scoreboard players operation $hunter ca.var = @s ca.hunter
scoreboard players operation $smite ca.var = @s ca.smite

scoreboard players operation $curse_misfortune ca.var = @s ca.curse_misfortune

scoreboard players operation $ranged_damage ca.var = @s ca.attr_ranged
scoreboard players operation $luck ca.var = @s ca.attr_luck
scoreboard players operation $random_crit ca.var = @s ca.attr_random_crit
scoreboard players operation $aoe_size ca.var = @s ca.attr_aoe_size

#Get the Wavedash ID if Wavedash exists
execute if score @s ca.wavedash matches 1.. run function cartographer_custom_enchantments:enchant_effects/wavedash/get_id

scoreboard players set $attacker_found ca.var 1