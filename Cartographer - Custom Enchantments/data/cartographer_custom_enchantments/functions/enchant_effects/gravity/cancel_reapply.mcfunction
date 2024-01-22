
data modify storage cartographer_custom_enchantments:gravity data.effect set value {}
data modify storage cartographer_custom_enchantments:gravity data.effect set from entity @s active_effects[{id:"minecraft:jump_boost"}].hidden_effect

scoreboard players set $jb ca.gravity_fall 0
execute store result score $jb ca.gravity_fall run data get storage cartographer_custom_enchantments:gravity data.effect.amplifier

effect clear @s jump_boost
execute if score $jb ca.gravity_fall matches 1.. run function cartographer_custom_enchantments:enchant_effects/gravity/reapply_jump_boost