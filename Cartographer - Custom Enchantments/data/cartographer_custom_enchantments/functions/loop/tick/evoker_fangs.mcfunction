#Evoker Fangs from Evocation - Kill them if they stay alive too long, and "trample" them, increasing their warmup tags as long as a player stands on it.
function cartographer_custom_enchantments:enchant_effects/evocation/purge
execute if entity @a[distance=..1.25] run function cartographer_custom_enchantments:enchant_effects/evocation/trample