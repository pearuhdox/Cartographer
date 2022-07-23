# Arrows
execute if entity @s[type=#bb:arrow] run function cartographer_custom_enchantments:loop/tick/arrow

# Hostile Entities
execute if entity @s[type=#bb:hostile] run function cartographer_custom_enchantments:loop/tick/hostile

# Trident
execute if entity @s[type=trident] run function cartographer_custom_enchantments:loop/tick/trident

# Armor Stand
execute if entity @s[type=armor_stand] run function cartographer_custom_enchantments:loop/tick/armor_stand

# Evoker Fangs from Evocation
execute if entity @s[type=evoker_fangs,tag=from_evocation] run function cartographer_custom_enchantments:loop/tick/evoker_fangs