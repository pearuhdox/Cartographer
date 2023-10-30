data modify storage cartographer_mob_abilities:curse GetEffects set value []
data modify storage cartographer_mob_abilities:curse GetEffects set from entity @s active_effects

#Remove Negative Effects and Instant Effects
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:slowness"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:mining_fatigue"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:instant_health"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:instant_damage"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:nasuea"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:blindness"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:hunger"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:weakness"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:poison"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:wither"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:saturation"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:levitation"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:unluck"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:bad_omen"}]
data remove storage cartographer_mob_abilities:curse GetEffects[{id:"minecraft:darkness"}]

data modify storage cartographer_mob_abilities:curse SendEffects set value []
#Recursively Change Effects
function cartographer_mob_abilities:ability_traits/curse/rec

#Send the Effects
function cartographer_mob_abilities:ability_traits/curse/send_effects