scoreboard players operation @s ca.ricochet = @p ca.ricochet
scoreboard players operation @s ca.current = @p ca.current
scoreboard players operation @s ca.loyalty = @p ca.loyalty
scoreboard players operation @s ca.wavedash = @p ca.wavedash
scoreboard players operation @s ca.collapse = @p ca.collapse


scoreboard players operation @s ca.fire_aspect = @p ca.fire_aspect
scoreboard players operation @s ca.knockback = @p ca.knockback

scoreboard players operation @s ca.executioner = @p ca.executioner
scoreboard players operation @s ca.first_strike = @p ca.first_strike
scoreboard players operation @s ca.hex_eater = @p ca.hex_eater
scoreboard players operation @s ca.tempo_theft = @p ca.tempo_theft
scoreboard players operation @s ca.cauterize = @p ca.cauterize

scoreboard players operation @s ca.duelist = @p ca.duelist
scoreboard players operation @s ca.hunter = @p ca.hunter
scoreboard players operation @s ca.smite = @p ca.smite



scoreboard players operation @s ca.fire_aspect += @p ca.off_fire_aspect
scoreboard players operation @s ca.knockback += @p ca.off_knockback

scoreboard players operation @s ca.executioner += @p ca.off_executioner
scoreboard players operation @s ca.first_strike += @p ca.off_first_strike
scoreboard players operation @s ca.hex_eater += @p ca.off_hex_eater
scoreboard players operation @s ca.tempo_theft += @p ca.off_tempo_theft
scoreboard players operation @s ca.cauterize += @p ca.off_cauterize

scoreboard players operation @s ca.duelist += @p ca.off_duelist
scoreboard players operation @s ca.hunter += @p ca.off_hunter
scoreboard players operation @s ca.smite += @p ca.off_smite

scoreboard players operation @s ca.curse_misfortune += @p ca.curse_misfortune_main
scoreboard players operation @s ca.curse_misfortune += @p ca.curse_misfortune_off

scoreboard players operation @s ca.attr_luck += @p ca.attr_luck
scoreboard players operation @s ca.attr_aoe_size += @p ca.attr_aoe_size

scoreboard players operation @s ca.attr_random_crit += @p ca.attr_random_crit

execute if score @s ca.ricochet matches 1.. run tag @s add is_ricocheting

tag @s add custom_trident

tag @s add ca.custom_just_fired

scoreboard players set $throw_trident ca.ench_var 1