execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run tp @s ~ ~ ~ facing entity @p[scores={eruption=1..}] feet
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run function cartographer_core:helper/push_half


execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players set @s damage_queue 3
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=2}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players set @s damage_queue 6
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=3}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players set @s damage_queue 9
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=4}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players set @s damage_queue 12
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=5}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players set @s damage_queue 15

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run function cartographer_core:helper/deal_damage/by_score

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run function cartographer_core:helper/deal_damage/invulnerable_tick

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}]}}}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run data modify entity @s Fire set value 85
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:2s}]}}}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run data modify entity @s Fire set value 165
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:3s}]}}}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run data modify entity @s Fire set value 245
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:4s}]}}}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run data modify entity @s Fire set value 325
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:5s}]}}}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run data modify entity @s Fire set value 405

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,frostbite=1}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s slowness 4 0
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,frostbite=2}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s slowness 4 1
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,frostbite=3}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s slowness 4 2
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,frostbite=4}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s slowness 4 3
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,frostbite=5}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s slowness 4 4
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,frostbite=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:item_snowball ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,decay=1}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s wither 5 0
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,decay=2}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s wither 5 1
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,decay=3}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s wither 5 2
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,decay=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:dust 0.1 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0.5 15 normal

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,overload=1}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players set @s effect_shocked 3
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,overload=2}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players set @s effect_shocked 5
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,overload=3}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players set @s effect_shocked 7
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,overload=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,vicious=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run scoreboard players add @s[scores={effect_bleed=1..},type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s}] effect_bleed 11

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,vicious=1}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run execute unless entity @s[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 3
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,vicious=2}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run execute unless entity @s[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 5
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,vicious=3}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run execute unless entity @s[type=#cartographer_core:hostile,distance=..5,nbt=!{HurtTime:0s},scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 7
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,vicious=1..}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.25 0.4 0.25 0 10 normal

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=1..}] run function cartographer_core:helper/randomize
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=1..}] run scoreboard players operation @s helper_melee = @s random

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=1,helper_melee=..10}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=2,helper_melee=..20}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=3,helper_melee=..30}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=4,helper_melee=..40}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=5,helper_melee=..50}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run particle minecraft:firework ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=1,helper_melee=..10}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=2,helper_melee=..20}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=3,helper_melee=..30}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=4,helper_melee=..40}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=5,helper_melee=..50}] run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.5 1.25

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=1,helper_melee=..10}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..8] effect_stunned 21
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=2,helper_melee=..20}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..8] effect_stunned 21
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=3,helper_melee=..30}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..8] effect_stunned 21
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=4,helper_melee=..40}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..8] effect_stunned 21
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,stunning=5,helper_melee=..50}] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..8] effect_stunned 21

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,committed=1}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s bad_omen 3 0
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,committed=2}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s bad_omen 3 1
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute if entity @s[scores={eruption=1..,committed=3}] run execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s bad_omen 3 2

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run playsound minecraft:entity.blaze.shoot player @a[distance=..8] ~ ~ ~ 0.5 0.5
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 1 3 normal 

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~8 ~ ~ 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~7 ~ ~1 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~7 ~ ~2 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~6 ~ ~3 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~6 ~ ~4 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~5 ~ ~5 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~4 ~ ~6 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~3 ~ ~6 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~2 ~ ~7 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~1 ~ ~7 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~ ~ ~8 0.4 0 0.4 0.01 6 normal @a

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-8 ~ ~ 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-7 ~ ~1 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-7 ~ ~2 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-6 ~ ~3 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-6 ~ ~4 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-5 ~ ~5 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-4 ~ ~6 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-3 ~ ~6 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-2 ~ ~7 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-1 ~ ~7 0.4 0 0.4 0.01 6 normal @a

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-7 ~ ~-1 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-7 ~ ~-2 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-6 ~ ~-3 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-6 ~ ~-4 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-5 ~ ~-5 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-4 ~ ~-6 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-3 ~ ~-6 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-2 ~ ~-7 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~-1 ~ ~-7 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~ ~ ~-8 0.4 0 0.4 0.01 6 normal @a

execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~7 ~ ~-1 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~7 ~ ~-2 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~6 ~ ~-3 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~6 ~ ~-4 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~5 ~ ~-5 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~4 ~ ~-6 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~3 ~ ~-6 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~2 ~ ~-7 0.4 0 0.4 0.01 6 normal @a
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:flame ~1 ~ ~-7 0.4 0 0.4 0.01 6 normal @a