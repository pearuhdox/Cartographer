data modify storage cartographer_charon:effect_manager GetEffects set value []
data modify storage cartographer_charon:effect_manager GetEffects set from entity @s active_effects

#Remove Instant Effects
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:slowness"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:mining_fatigue"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:instant_health"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:instant_damage"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:nausea"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:blindness"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:hunger"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:weakness"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:poison"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:wither"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:saturation"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:levitation"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:unluck"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:bad_omen"}]
data remove storage cartographer_charon:effect_manager GetEffects[{id:"minecraft:darkness"}]

data modify storage cartographer_charon:effect_manager SendEffects set value []

#Recursively Change Effects
function cartographer_charon:effect_manager/rec

function bb:lib/pldata/read

data modify storage bbl:pldata sudo_root.working_data.DeathRestoreEffects set value []
data modify storage bbl:pldata sudo_root.working_data.DeathRestoreEffects set from storage cartographer_charon:effect_manager SendEffects

function bb:lib/pldata/write