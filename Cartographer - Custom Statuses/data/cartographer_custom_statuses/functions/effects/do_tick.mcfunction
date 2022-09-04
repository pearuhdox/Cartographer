data modify storage cartographer_custom_statuses:dmg_save_wither OldWither set value {}
data modify storage cartographer_custom_statuses:dmg_save_wither OldWither set from entity @s ActiveEffects[{Id:20}]
data modify entity @s ActiveEffects append value {Id:20,Duration:2,Amplifier:100b}
data modify entity @s ActiveEffects[{Id:20}].HiddenEffect set from storage cartographer_custom_statuses:dmg_save_wither OldWither