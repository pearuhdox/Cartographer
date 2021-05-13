# Arrows
execute as @s[type=#cartographer_core:arrow] at @s run function cartographer_custom_enchantments:loop/tick/arrow

# Hostile Entities
execute as @s[type=#cartographer_core:hostile] at @s run function cartographer_custom_enchantments:loop/tick/hostile

# Trident
execute as @s[type=trident] run function cartographer_custom_enchantments:loop/tick/trident

# Armor Stand
execute as @s[type=armor_stand] at @s run function cartographer_custom_enchantments:loop/tick/armor_stand

# Evoker Fangs from Evocation
execute as @s[type=evoker_fangs,tag=from_evocation] at @s run function cartographer_custom_enchantments:loop/tick/evoker_fangs