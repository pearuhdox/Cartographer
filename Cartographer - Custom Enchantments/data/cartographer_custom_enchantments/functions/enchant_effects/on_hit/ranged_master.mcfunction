scoreboard players set $ranged ca.weapon_var 1

scoreboard players operation $first_strike ca.var = $first_strike ca.weapon_var
scoreboard players operation $lvl ca.hex_eater = $hex_eater ca.weapon_var
scoreboard players operation $cauterize ca.ench_var = $cauterize ca.weapon_var
scoreboard players operation $lvl ca.executioner = $executioner ca.weapon_var
scoreboard players operation $tempo_theft ca.var = $tempo_theft ca.weapon_var

scoreboard players operation $lvl ca.fire_aspect = $fire_aspect ca.weapon_var


execute if score $first_strike ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/first_strike/branch
execute if score $hex_eater ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/hex_eater/branch
execute if score $cauterize ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/cauterize/test_cauterize
execute if score $executioner ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/executioner/branch
execute if score $tempo_theft ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/tempo_theft/mob

execute if score $fire_aspect ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/fire_aspect/branch

execute if score $knockback ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/knockback/branch
execute if score $punch ca.weapon_var matches 1.. unless score $knockback ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/knockback/branch

scoreboard players set $melee ca.weapon_var 0
scoreboard players set $ranged ca.weapon_var 0
