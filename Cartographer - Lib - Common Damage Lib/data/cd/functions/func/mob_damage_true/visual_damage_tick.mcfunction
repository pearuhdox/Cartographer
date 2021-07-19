data modify storage cartographer_core:dmg_save_resist OldResist set value {}
data modify storage cartographer_core:dmg_save_wither OldWither set value {}

data modify storage cartographer_core:dmg_save_resist OldResist set from entity @s ActiveEffects[{Id:11b}]
data modify storage cartographer_core:dmg_save_wither OldWither set from entity @s ActiveEffects[{Id:20b}]

#Data Modify Wither and Resistance onto the mob.
data modify entity @s ActiveEffects append value {Id:20b,Duration:2,Amplifier:100b}
data modify entity @s ActiveEffects append value {Id:11b,Duration:2,Amplifier:100b}

data modify entity @s ActiveEffects[{Id:20b}].HiddenEffect set from storage cartographer_core:dmg_save_wither OldWither
data modify entity @s ActiveEffects[{Id:11b}].HiddenEffect set from storage cartographer_core:dmg_save_resist OldResist
