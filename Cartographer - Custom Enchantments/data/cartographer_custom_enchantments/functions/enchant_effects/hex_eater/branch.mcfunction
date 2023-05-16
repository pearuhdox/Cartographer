scoreboard players set $dmg ca.hex_eater 0

execute if predicate cartographer_custom_enchantments:hex_eater/has_bad_omen run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_blindness run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_darkness run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_levitation run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_mining_fatigue run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_poison run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_slowness run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_weakness run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_wither run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/has_nausea run scoreboard players add $dmg ca.hex_eater 1
execute if predicate cartographer_custom_enchantments:hex_eater/is_on_fire run scoreboard players add $dmg ca.hex_eater 1

execute if score @s ca.frost_time matches 1.. run scoreboard players add $dmg ca.hex_eater 1

execute if score @s ca.effect_stun_duration matches 1.. run scoreboard players add $dmg ca.hex_eater 1
execute if score @s ca.effect_bleed matches 1.. run scoreboard players add $dmg ca.hex_eater 1
execute if score @s ca.effect_shock matches 1.. run scoreboard players add $dmg ca.hex_eater 1
execute if score @s ca.effect_infect matches 1.. run scoreboard players add $dmg ca.hex_eater 1

scoreboard players operation $dmg ca.hex_eater *= $lvl ca.hex_eater

scoreboard players operation @s ca.damage_queue = $dmg ca.hex_eater
execute if score @s ca.damage_queue matches 1.. run function cartographer_custom_enchantments:helper/damage/enchant_damage_bypass

effect clear @s bad_omen
effect clear @s blindness
effect clear @s darkness
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s poison
effect clear @s slowness
effect clear @s weakness
effect clear @s wither
effect clear @s nausea

execute if predicate cartographer_custom_enchantments:hex_eater/is_on_fire run summon potion ~ ~0.25 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}}

execute if score @s ca.frost_time matches 1.. run scoreboard players set @s ca.frost_time 2

execute if score @s ca.effect_stun_duration matches 1.. run scoreboard players set @s ca.effect_stun_duration 2
execute if score @s ca.effect_bleed matches 1.. run scoreboard players set @s ca.effect_bleed 0
execute if score @s ca.effect_shock matches 1.. run scoreboard players set @s ca.effect_shock 0
execute if score @s ca.effect_infect matches 1.. run scoreboard players set @s ca.effect_infect 0

execute if score $dmg ca.hex_eater matches 1.. run playsound minecraft:entity.warden.death player @a ~ ~ ~ 0.5 2
execute if score $dmg ca.hex_eater matches 1.. run particle minecraft:effect ~ ~1.2 ~ 0.3 0.5 0.3 4 14 normal

function #minecraft:cartographer/events/enchants_mob_hit/melee/hex_eater