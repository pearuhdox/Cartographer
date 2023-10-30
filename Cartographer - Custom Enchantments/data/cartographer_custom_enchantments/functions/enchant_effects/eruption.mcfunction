scoreboard players operation $eruption ca.eruption = @s ca.eruption

scoreboard players operation $eruption ca.cauterize = @s ca.cauterize
scoreboard players operation $eruption ca.fire_aspect = @s ca.fire_aspect
scoreboard players operation $eruption ca.knockback = @s ca.knockback
scoreboard players operation $eruption ca.frostbite = @s ca.frostbite

scoreboard players operation $eruption ca.evocation = @s ca.evocation
scoreboard players operation $eruption ca.executioner = @s ca.executioner

scoreboard players set $do_apply_effects ca.status_var 0
scoreboard players set $do_apply_status ca.status_var 0
function cartographer_custom_statuses:apply_effects/save/mainhand
function cartographer_custom_statuses:apply_status/save/mainhand



function #minecraft:cartographer/events/enchantments/tool/eruption

#Run branching on the xp orb here.
execute as @e[type=minecraft:experience_orb,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/eruption/branch

#If no xp orb, approximate instead
execute unless entity @e[type=minecraft:experience_orb,limit=1,sort=nearest,distance=..6] as @s positioned ^ ^ ^3 run function cartographer_custom_enchantments:enchant_effects/eruption/recursion

#scoreboard players set $eruption ca.eruption 0

scoreboard players set $eruption ca.cauterize 0
scoreboard players set $eruption ca.fire_aspect 0
scoreboard players set $eruption ca.knockback 0
scoreboard players set $eruption ca.frostbite 0
scoreboard players set $eruption ca.evocation 0
scoreboard players set $eruption ca.executioner 0