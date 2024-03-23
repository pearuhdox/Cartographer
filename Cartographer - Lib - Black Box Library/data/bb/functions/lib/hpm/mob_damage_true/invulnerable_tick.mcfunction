
data modify storage bbl:dmg_save_resist OldResist set value {}
data modify storage bbl:dmg_save_wither OldWither set value {}

data modify storage bbl:dmg_save_resist OldResist set from entity @s active_effects[{Id:11}]
data modify storage bbl:dmg_save_wither OldWither set from entity @s active_effects[{Id:20}]

data modify entity @s active_effects append value {Id:20,Duration:2,Amplifier:100b}
data modify entity @s active_effects append value {Id:11,Duration:2,Amplifier:100b}

data modify entity @s active_effects[{Id:20}].HiddenEffect set from storage bbl:dmg_save_wither OldWither
data modify entity @s active_effects[{Id:11}].HiddenEffect set from storage bbl:dmg_save_resist OldResist
