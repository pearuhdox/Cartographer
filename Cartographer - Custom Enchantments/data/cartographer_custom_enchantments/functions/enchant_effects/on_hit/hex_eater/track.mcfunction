scoreboard players set $old ca.hex_eater -1
scoreboard players operation $old ca.hex_eater = @s ca.hex_eater

scoreboard players set @s ca.hex_eater 0

execute if predicate cartographer_custom_enchantments:hex_eater/has_bad_omen run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_blindness run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_darkness run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_levitation run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_mining_fatigue run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_poison run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_slowness run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_weakness run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_wither run scoreboard players add @s ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_nausea run scoreboard players add @s ca.hex_eater 1

execute if predicate cartographer_custom_enchantments:hex_eater/is_on_fire run scoreboard players add @s ca.hex_eater 1

execute if score @s ca.effect_stun_duration matches 1.. run scoreboard players add @s ca.hex_eater 1
execute if score @s ca.effect_bleed matches 1.. run scoreboard players add @s ca.hex_eater 1
execute if score @s ca.effect_shock matches 1.. run scoreboard players add @s ca.hex_eater 1
execute if score @s ca.effect_infect matches 1.. run scoreboard players add @s ca.hex_eater 1
execute if score @s ca.charm_time matches 1.. run scoreboard players add @s ca.hex_eater 1
execute if score @s ca.effect_shackled matches 1.. run scoreboard players add @s ca.hex_eater 1
execute if score @s ca.effect_oiled_duration matches 1.. run scoreboard players add @s ca.hex_eater 1
execute if score @s ca.effect_brittle_duration matches 1.. run scoreboard players add @s ca.hex_eater 1

execute if score $old ca.hex_eater matches 0 if score @s ca.hex_eater matches 1.. run scoreboard players set @s ca.hex_eater_time 2