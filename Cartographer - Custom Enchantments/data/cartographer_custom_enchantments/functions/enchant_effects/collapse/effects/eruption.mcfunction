scoreboard players operation $eruption ca.eruption = @s ca.eruption

scoreboard players operation $eruption ca.frostbite = @s ca.frostbite
scoreboard players operation $eruption ca.knockback = @s ca.knockback
scoreboard players operation $eruption ca.evocation = @s ca.evocation
scoreboard players operation $eruption ca.fire_aspect = @s ca.fire_aspect
scoreboard players operation $eruption ca.executioner = @s ca.executioner

data modify storage cartographer_custom_statuses:apply_effects data.Effects set from entity @s ArmorItems[3].tag.ApplyEffects
data modify storage cartographer_custom_statuses:status_inflict data.Effects set from entity @s ArmorItems[3].tag.StatusInflict

function cartographer_custom_enchantments:enchant_effects/eruption/branch

data modify storage cartographer_custom_statuses:apply_effects data.Effects set value {}
data modify storage cartographer_custom_statuses:status_inflict data.Effects set value {}