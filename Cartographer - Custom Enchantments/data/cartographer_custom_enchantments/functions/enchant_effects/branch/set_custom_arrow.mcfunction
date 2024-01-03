function cartographer_custom_enchantments:enchant_effects/branch/reset_enchants
execute on origin run function cartographer_custom_enchantments:enchant_effects/branch/get_player_enchants

scoreboard players operation @s ca.flame = $flame ca.var

scoreboard players operation @s ca.point_blank = $point_blank ca.var
scoreboard players operation @s ca.sharpshot = $sharpshot ca.var

scoreboard players operation @s ca.punch = $punch ca.var

scoreboard players operation @s ca.concentration = $concentration ca.var

scoreboard players operation @s ca.shrapnel = $shrapnel ca.var

execute if score @s ca.explosive matches 1.. store result score @s ca.vol_dmg run data get entity @s damage 10
execute if score @s ca.explosive matches 1.. run data merge entity @s {damage:-1.0d}
execute if score @s ca.explosive matches 1.. if score @s ca.flame matches 1.. run tag @s add vol_flame


scoreboard players operation @s ca.fire_aspect = $fire_aspect ca.var
scoreboard players operation @s ca.knockback = $knockback ca.var

scoreboard players operation @s ca.executioner = $executioner ca.var
scoreboard players operation @s ca.first_strike = $first_strike ca.var
scoreboard players operation @s ca.hex_eater = $hex_eater ca.var
scoreboard players operation @s ca.tempo_theft = $tempo_theft ca.var
scoreboard players operation @s ca.cauterize = $cauterize ca.var

scoreboard players operation @s ca.duelist = $duelist ca.var
scoreboard players operation @s ca.hunter = $hunter ca.var
scoreboard players operation @s ca.smite = $smite ca.var


execute unless score $ignore_arrow_ench ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/branch/grab_arrow_data
execute unless score $ignore_arrow_ench ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/branch/get_player_enchants


tag @s add custom_arrow

tag @s add ca.custom_just_fired