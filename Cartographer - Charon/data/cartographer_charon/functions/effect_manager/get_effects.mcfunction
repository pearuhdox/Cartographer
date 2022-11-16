data modify storage cartographer_charon:effect_manager GetEffects set value []
data modify storage cartographer_charon:effect_manager GetEffects set from entity @s ActiveEffects

#Remove Instant Effects
data remove storage cartographer_charon:effect_manager GetEffects[{Id:2}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:4}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:6}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:7}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:9}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:15}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:17}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:18}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:19}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:20}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:23}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:25}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:27}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:31}]
data remove storage cartographer_charon:effect_manager GetEffects[{Id:33}]

data modify storage cartographer_charon:effect_manager SendEffects set value []

#Recursively Change Effects
function cartographer_charon:effect_manager/rec

function suso.player_data:get/do

data modify storage suso:pldata working_data.DeathRestoreEffects set value []
data modify storage suso:pldata working_data.DeathRestoreEffects set from storage cartographer_charon:effect_manager SendEffects

function suso.player_data:put/do