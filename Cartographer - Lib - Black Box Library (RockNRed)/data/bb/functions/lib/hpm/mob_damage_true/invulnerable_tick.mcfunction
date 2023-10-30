
data modify storage bbl:dmg_save_resist OldResist set value {}
data modify storage bbl:dmg_save_wither OldWither set value {}

data modify storage bbl:dmg_save_resist OldResist set from entity @s active_effects[{id:"minecraft:resistance"}]
data modify storage bbl:dmg_save_wither OldWither set from entity @s active_effects[{id:"minecraft:wither"}]

data modify entity @s active_effects append value {id:"minecraft:wither",duration:2,amplifier:100b}
data modify entity @s active_effects append value {id:"minecraft:resistance",duration:2,amplifier:100b}

data modify entity @s active_effects[{id:"minecraft:wither"}].HiddenEffect set from storage bbl:dmg_save_wither OldWither
data modify entity @s active_effects[{id:"minecraft:resistance"}].HiddenEffect set from storage bbl:dmg_save_resist OldResist
