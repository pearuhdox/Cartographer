#Tell Cartographer this pack is in use
scoreboard players set $custom_enchantments ca.installed 1

execute unless score $do_fall_damage ca.gamerule matches 1.. run scoreboard players set $do_fall_damage ca.gamerule 1
execute if score $do_fall_damage ca.gamerule matches 1.. run gamerule fallDamage false

#Run Deadeye UUIDS
function cartographer_custom_enchantments:enchant_effects/deadeye/entities