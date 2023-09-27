#Evoker Fangs from Evocation - Kill them if they stay alive too long, and "trample" them killing them if players walk on them.
function cartographer_custom_enchantments:enchant_effects/evocation/purge
execute if entity @a[distance=..0.75] run function cartographer_custom_enchantments:enchant_effects/evocation/trample