#These effects activate when a ranged attack is made via bow, crossbow, or trident. They are made at the player.

scoreboard players set $custom_arrow ca.var 0

scoreboard players set $attr_ranged_speed ca.var 0
scoreboard players set $attr_ranged ca.var 0
scoreboard players set $attr_ranged_perc ca.var 0

scoreboard players operation $ignore_arrow_ench ca.var = @s ca.ignore_arrow_ench

#Get data from player
#function cartographer_custom_enchantments:enchant_effects/branch/get_player_enchants

#Do all ranged checks.
function cartographer_custom_enchantments:enchant_calls/thrown_potion/setup_enchants

#Multishot - Must go First
execute if score $multishot ca.var matches 1.. at @s on vehicle unless entity @s[tag=ca.multishot_spawn] run function cartographer_custom_enchantments:enchant_effects/multishot/potion/player


# Custom Ranged Speed Attribute
scoreboard players set $val ca.attr_ranged_speed 100
execute unless score $attr_ranged_speed ca.var matches 100 run scoreboard players operation $val ca.attr_ranged_speed = $attr_ranged_speed ca.var
execute unless score $attr_ranged_speed ca.var matches 100 on vehicle at @s run function cartographer_custom_enchantments:attribute_effects/ranged_speed/increase_speed

# Custom Ranged Damage Attribute
scoreboard players set $val ca.attr_ranged 0

execute if score $attr_ranged ca.var matches 1.. if score $attr_ranged_perc ca.var matches 100 run function cartographer_custom_enchantments:attribute_effects/ranged_damage/player
execute unless score $attr_ranged_perc ca.var matches 100 unless score $attr_ranged ca.var matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/player
execute unless score $attr_ranged_perc ca.var matches 100 if score $attr_ranged ca.var matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/player

#Deadeye
#execute if score $deadeye ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/master

#Piercing
#execute if score $piercing ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/piercing/player

#Repeating Trigger
#execute as @s[scores={ca.repeating=1..7,ca.fire_cbow=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run scoreboard players set @s ca.rpt_cdl 3
#execute as @s[scores={ca.repeating=11..17,ca.fire_cbow=1..},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run scoreboard players set @s ca.rpt_cdl 3
#execute if score @s ca.rpt_cdl matches 1.. run scoreboard players operation @s ca.core_delay_check = @s ca.rpt_cdl


#Recoil Trigger
#execute as @s[scores={ca.recoil=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/recoil/master

# These do not work on potions
#Overcharge
#execute as @s[scores={ca.overcharge=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/overcharge/master

#Focus
#execute if score @s ca.draw_bow_time matches 20..27 as @s[scores={ca.focus=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/focus/master

#Concentration
execute if score $concentration ca.var matches 1.. at @s run function cartographer_custom_enchantments:enchant_effects/concentration/potion_master

# This does not work on potions
#Resourceful
#execute if score @s ca.resourceful matches 1.. run function cartographer_custom_enchantments:enchant_effects/resourceful/chance


scoreboard players set @s ca.recently_fired_weapon 80

# Not needed for potions
#Reset Fleetfoot
#scoreboard players remove @s ca.fleetfoot_cdl 19
#attribute @s minecraft:generic.movement_speed modifier remove 31-321-514-000-6151520

tag @e[type=#cartographer_custom_enchantments:bow_allowed_projectile,tag=ca.custom_just_fired,distance=..12] remove ca.custom_just_fired

#Run Tags
execute if score @s ca.fire_bow matches 1.. run function #minecraft:cartographer/events/player_shoot_bow
execute if score @s ca.fire_cbow matches 1.. run function #minecraft:cartographer/events/player_shoot_crossbow