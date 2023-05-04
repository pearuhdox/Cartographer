# Armor Stand
execute if entity @s[type=armor_stand] run function cartographer_custom_enchantments:loop/tick/armor_stand

# Evoker Fangs from Evocation
execute if entity @s[type=evoker_fangs,tag=from_evocation] run function cartographer_custom_enchantments:loop/tick/evoker_fangs