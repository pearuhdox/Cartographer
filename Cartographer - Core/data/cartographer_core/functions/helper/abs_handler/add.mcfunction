data modify storage cartographer_core:abs_helper effect set value {}
data modify storage cartographer_core:abs_helper effect set from entity @s active_effects[{id:"minecraft:absorption"}]

execute store result score $saved_amt ca.abs_handler run data get entity @s AbsorptionAmount 1
execute store result score $saved_dur ca.abs_handler run data get storage cartographer_core:abs_helper effect.duration 0.05

data modify storage cartographer_core:abs_helper effect set value {}
data modify storage cartographer_core:abs_helper effect set from entity @s active_effects[{id:"minecraft:absorption"}]


scoreboard players operation $amount ca.abs_handler += $saved_amt ca.abs_handler
scoreboard players operation $duration ca.abs_handler += $saved_dur ca.abs_handler

#execute store result storage cartographer:macro.core hidden_amplifier int 1 run data get storage cartographer_core:abs_helper effect.amplifier
#execute store result storage cartographer:macro.core hidden_duration int 0.05 run data get storage cartographer_core:abs_helper effect.duration

scoreboard players set $add_flag ca.abs_handler 1
function cartographer_core:helper/abs_handler/set

scoreboard players set $saved_dur ca.abs_handler 0
scoreboard players set $saved_amt ca.abs_handler 0