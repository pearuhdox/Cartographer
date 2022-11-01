execute if entity @s[tag=ca.blazing] run data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "ca.blazing"
execute if entity @s[tag=ca.glacial] run data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "ca.glacial"
execute if entity @s[tag=ca.horrifying] run data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "ca.horrifying"
execute if entity @s[tag=ca.overloading] run data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "ca.overloading"
execute if entity @s[tag=ca.venemous] run data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "ca.venemous"
execute if entity @s[tag=ca.zephyrous] run data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "ca.zephyrous"
execute if entity @s[tag=ca.volatile] run data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "ca.volatile"
execute if entity @s[tag=ca.webbing] run data modify storage cartographer_mob_abilities:info pulse_shot.Tags append value "ca.webbing"

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:abilities/quickdraw/pulse_shot/alchemist_save