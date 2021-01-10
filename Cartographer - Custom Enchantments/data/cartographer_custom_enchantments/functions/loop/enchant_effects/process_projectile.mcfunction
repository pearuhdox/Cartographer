execute as @s[type=arrow,scores={point_blank=1..,helper_lifetime=2..}] run function cartographer_custom_enchantments:loop/enchant_effects/point_blank_arrow
execute as @s[type=trident,scores={tempest=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempest_trident
execute as @s[type=trident,scores={ricochet=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/ricochet_trident
execute as @s[type=arrow,scores={sharpshot=1..,helper_lifetime=2..}] run function cartographer_custom_enchantments:loop/enchant_effects/sharpshot_arrow
execute as @s[type=trident,scores={current=1}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/current_trident

execute as @s[type=arrow,scores={helper_lifetime=1..},nbt={inGround:1b,CustomPotionEffects:[{Id:30b}]},tag=effect_arrow] at @s run function cartographer_custom_enchantments:loop/enchant_effects/effect_arrow_volatile
execute as @s[type=arrow,scores={helper_lifetime=1..},nbt={inGround:1b},tag=effect_arrow] run function cartographer_custom_enchantments:loop/enchant_effects/effect_arrow_break