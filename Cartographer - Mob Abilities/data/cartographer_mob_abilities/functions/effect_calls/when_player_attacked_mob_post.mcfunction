#Touch Passive
scoreboard players set $aftershock ca.touch_check 0
scoreboard players set $blazing ca.touch_check 0
scoreboard players set $celestial ca.touch_check 0
scoreboard players set $evocative ca.touch_check 0
scoreboard players set $glacial ca.touch_check 0
scoreboard players set $overloading ca.touch_check 0
scoreboard players set $predator ca.touch_check 0
scoreboard players set $venemous ca.touch_check 0
scoreboard players set $voatile ca.touch_check 0
scoreboard players set $zephyrous ca.touch_check 0

execute if entity @s[tag=ca.touch] if entity @s[tag=ca.aftershock] run scoreboard players set $aftershock ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.blazing] run scoreboard players set $blazing ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.celestial] run scoreboard players set $celestial ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.evocative] run scoreboard players set $evocative ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.glacial] run scoreboard players set $glacial ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.overloading] run scoreboard players set $overloading ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.predator] run scoreboard players set $predator ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.venemous] run scoreboard players set $venemous ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.volatile] run scoreboard players set $voatile ca.touch_check 1
execute if entity @s[tag=ca.touch] if entity @s[tag=ca.zephyrous] run scoreboard players set $zephyrous ca.touch_check 1


execute if entity @s[tag=ca.touch] at @s if entity @a[tag=touched,advancements={entityid:entity_hurt_player={is_projectile=false}}] run tag @a[tag=touched] add ability_tagged
execute if entity @s[tag=ca.touch] at @s if entity @a[tag=touched,advancements={entityid:entity_hurt_player={is_projectile=false}}] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute if entity @s[tag=ca.touch] at @s if entity @a[tag=touched,advancements={entityid:entity_hurt_player={is_projectile=true}}] run tag @a[tag=touched] add ability_tagged
execute if entity @s[tag=ca.touch] at @s if entity @a[tag=touched,advancements={entityid:entity_hurt_player={is_projectile=true}}] run function cartographer_mob_abilities:ability_traits/touch/ranged

execute if entity @s[tag=hook_broken] at @s run scoreboard players set @s ca.hooked 2

tag @a remove touched
tag @a remove ability_tagged

#execute if entity @a[tag=check_custom_shulker_bullet] run function cartographer_mob_abilities:passive/projectile/shulker_save_data