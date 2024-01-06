scoreboard players operation $attr_ranged ca.deadeye = $val ca.attr_ranged

scoreboard players operation $power ca.deadeye = @s ca.power
scoreboard players operation $punch ca.deadeye = @s ca.punch
scoreboard players operation $flame ca.deadeye = @s ca.flame

scoreboard players operation $multishot ca.deadeye = @s ca.multishot
scoreboard players operation $piercing ca.deadeye = @s ca.piercing
scoreboard players operation $piercing_ct ca.deadeye = @s ca.piercing

scoreboard players operation $sharpshot ca.deadeye = @s ca.sharpshot
scoreboard players operation $point_blank ca.deadeye = @s ca.point_blank

scoreboard players operation $draw_bow_time ca.deadeye = @s ca.draw_bow_time

scoreboard players operation $overcharge ca.deadeye = @s ca.overcharge
scoreboard players operation $overcharge_tier ca.deadeye = @s ca.ov_tier

scoreboard players operation $focus ca.deadeye = @s ca.focus
scoreboard players operation $concentration ca.deadeye = @s ca.concentration
scoreboard players operation $concentration_stacks ca.deadeye = @s ca.concentrate_stack


scoreboard players set $fire_aspect ca.weapon_var 0
scoreboard players set $knockback ca.weapon_var 0

scoreboard players set $executioner ca.weapon_var 0
scoreboard players set $first_strike ca.weapon_var 0
scoreboard players set $hex_eater ca.weapon_var 0
scoreboard players set $tempo_theft ca.weapon_var 0
scoreboard players set $cauterize ca.weapon_var 0

scoreboard players set $duelist ca.weapon_var 0
scoreboard players set $hunter ca.weapon_var 0
scoreboard players set $smite ca.weapon_var 0

scoreboard players operation $fire_aspect ca.weapon_var = @s ca.fire_aspect
scoreboard players operation $knockback ca.weapon_var = @s ca.knockback

scoreboard players operation $executioner ca.weapon_var = @s ca.executioner
scoreboard players operation $first_strike ca.weapon_var = @s ca.first_strike
scoreboard players operation $hex_eater ca.weapon_var = @s ca.hex_eater
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.tempo_theft
scoreboard players operation $cauterize ca.weapon_var = @s ca.cauterize

scoreboard players operation $duelist ca.weapon_var = @s ca.duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.hunter
scoreboard players operation $smite ca.weapon_var = @s ca.smite


scoreboard players operation $fire_aspect ca.weapon_var += @s ca.off_fire_aspect
scoreboard players operation $knockback ca.weapon_var += @s ca.off_knockback

scoreboard players operation $executioner ca.weapon_var += @s ca.off_executioner
scoreboard players operation $first_strike ca.weapon_var += @s ca.off_first_strike
scoreboard players operation $hex_eater ca.weapon_var += @s ca.off_hex_eater
scoreboard players operation $tempo_theft ca.weapon_var += @s ca.off_tempo_theft
scoreboard players operation $cauterize ca.weapon_var += @s ca.off_cauterize

scoreboard players operation $duelist ca.weapon_var += @s ca.off_duelist
scoreboard players operation $hunter ca.weapon_var += @s ca.off_hunter
scoreboard players operation $smite ca.weapon_var += @s ca.off_smite