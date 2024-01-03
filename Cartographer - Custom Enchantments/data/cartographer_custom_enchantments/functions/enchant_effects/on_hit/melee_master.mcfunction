scoreboard players set $melee ca.weapon_var 1

execute if score $first_strike ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/first_strike/branch
execute if score $hex_eater ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/hex_eater/branch
execute if score $cauterize ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/cauterize/test_cauterize
execute if score $executioner ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/executioner/branch
execute if score $tempo_theft ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/tempo_theft/mob

execute unless score $block_fire_aspect ca.weapon_var matches 1.. if score $fire_aspect ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/fire_aspect/branch

execute unless score $block_knockback ca.weapon_var matches 1.. if score $knockback ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/knockback/branch
execute unless score $block_punch ca.weapon_var matches 1.. if score $punch ca.weapon_var matches 1.. unless score $knockback ca.weapon_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/on_hit/knockback/punch

execute unless score $block_smite ca.weapon_var matches 1.. if score $smite ca.weapon_var matches 1.. if entity @s[type=#bb:undead] run function cartographer_custom_enchantments:enchant_effects/on_hit/smite/proc

execute if score $duelist ca.weapon_var matches 1.. if entity @s[type=#cartographer_custom_enchantments:duelist] run function cartographer_custom_enchantments:enchant_effects/on_hit/duelist/proc
execute if score $hunter ca.weapon_var matches 1.. if entity @s[type=#cartographer_custom_enchantments:hunter] run function cartographer_custom_enchantments:enchant_effects/on_hit/hunter/proc


scoreboard players set $melee ca.weapon_var 0
scoreboard players set $ranged ca.weapon_var 0
scoreboard players set $block_smite ca.weapon_var 0
scoreboard players set $block_fire_aspect ca.weapon_var 0
scoreboard players set $block_knockback ca.weapon_var 0
scoreboard players set $block_punch ca.weapon_var 0