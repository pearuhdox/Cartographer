data modify storage cartographer_mob_abilities:curse GetEffects set value []
data modify storage cartographer_mob_abilities:curse GetEffects set from entity @s ActiveEffects

#Remove Negative Effects and Instant Effects
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:2}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:4}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:6}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:7}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:9}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:15}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:17}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:18}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:19}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:20}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:23}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:25}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:27}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:31}]
data remove storage cartographer_mob_abilities:curse GetEffects[{Id:33}]

data modify storage cartographer_mob_abilities:curse SendEffects set value []
#Recursively Change Effects
function cartographer_mob_abilities:ability_traits/curse/rec

#Send the Effects
function cartographer_mob_abilities:ability_traits/curse/send_effects