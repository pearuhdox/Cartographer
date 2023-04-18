gamerule keepInventory true
forceload add 271101 271101

function suso.rng:seed

scoreboard objectives add dt.death deathCount
scoreboard objectives add dt.respawn minecraft.custom:minecraft.time_since_death
scoreboard objectives add dt.var dummy

scoreboard objectives add dt.home_cooldown dummy

scoreboard objectives add charon.death_count deathCount

scoreboard objectives add charon.xp_return dummy

scoreboard objectives add charon.gmr dummy

scoreboard objectives add charon.kill_test minecraft.killed:minecraft.wither_skeleton

scoreboard objectives add cage.var dummy

scoreboard objectives add void_home.x dummy
scoreboard objectives add void_home.y dummy
scoreboard objectives add void_home.z dummy

scoreboard objectives add taxes.var dummy
scoreboard objectives add taxes.time minecraft.custom:minecraft.time_since_death

scoreboard objectives add charon.player_stats dummy

scoreboard objectives add ca.revive_time dummy
scoreboard objectives add ca.is_reviving dummy

scoreboard objectives add ca.self_revive_timer dummy
scoreboard objectives add ca.self_revive_cooldown dummy

scoreboard objectives add ca.place_charon minecraft.used:minecraft.glow_item_frame

team add CharonCageVisual
team modify CharonCageVisual color dark_aqua

team add CharonShadeVisualLow
team modify CharonShadeVisualLow color red

# When a player has a score in Boons, instead of being subject to the traditional death mechanics, they will instead lose 1 Boon. At 0, Death penalties occur as normal.
# It is up to the mapmaker to decide how Boons are obtained, outside of the Ambrosia item which is innately supported.
scoreboard objectives add ca.boons dummy [{"text":"⛃","color":"gold","italic":false},{"text":" Boons ","color":"green","bold":true,"italic":false},{"text":"⛃","italic":false}]

scoreboard players set 1 dt.var 1
scoreboard players set 2 dt.var 2
scoreboard players set 3 dt.var 3
scoreboard players set 4 dt.var 4
scoreboard players set 5 dt.var 5
scoreboard players set 6 dt.var 6
scoreboard players set 7 dt.var 7
scoreboard players set 8 dt.var 8
scoreboard players set 9 dt.var 9
scoreboard players set 10 dt.var 10

execute unless score $drop_coeff charon.gmr matches 1.. run scoreboard players set $drop_coeff charon.gmr 5
execute unless score $inv_coeff charon.gmr matches 1.. run scoreboard players set $inv_coeff charon.gmr 9
execute unless score $scale_coeff charon.gmr matches 0.. run scoreboard players set $scale_coeff charon.gmr 0
execute unless score $xp_percent charon.gmr matches 0.. run scoreboard players set $xp_percent charon.gmr 50
execute unless score $xp_rate ca.gamerule matches 0.. run scoreboard players set $xp_rate ca.gamerule 4

#Place a hard coded UUID Marker for home calculations
# UUID: 38118151-4815-1351-3118-11518
# Data: [I;940671313,1209340753,823656448,70936]
summon marker 4206900 60 4206900 {UUID:[I;940671313,1209340753,823656448,70936],Tags:["ca.charon_home_marker"]}

setblock 4206900 60 4206900 purple_shulker_box destroy

execute unless score $death_drop charon.gmr matches 1.. unless score $cage charon.gmr matches 1.. unless score $trader charon.gmr matches 1.. unless score $collector charon.gmr matches 1.. run schedule function cartographer_charon:auto_set 10t

#summon villager -13 142 -96 {Attributes:[{Name:generic.movement_speed,Base:0.01}],Invulnerable:1b,UUID:[I;0,0,27,11],Willing:1b,CustomName:'{"text":"Necromancer Jaerida","color":"#644796"}',VillagerData:{level:99,profession:"minecraft:cartographer",type:"minecraft:desert"}}

#Gamerules on charon.gmr:

# Mode Rules:

# ONLY ENABLE ONE OF THESE AT A TIME
# $death_drop - causes items to drop on death
# $trader - causes dropped item bag to be sold by trader
# $collector - cause dropped items to be carried around by a Collector entity.
# $cage - Cause dropped items to be placed into a nearby spawner that must be broken to retrieve the items.

# (All Always Drop Rules will override Never Drop rules)
# Drop Rules:

# $always_drop_boxes - Causes Shulker Boxes to always drop
# Shulker Boxes are not scanned for objectives or items.
# Use this if you do not want Shulker Boxes to be safe spaces where items can be protected.

# $never_drop_hotbar - Causes hotbar to never drop
# $never_drop_armor - Causes armor to never drop
# $never_drop_offhand - Causes offhand to never drop
# $never_drop_backpack - Causes backpack (aka other) inventory slots to never drop

# $drop_all_allowed - Drop all items allowed to drop instead of random chance. (Items marked as never to drop will not be dropped)

# Void Ruleset:
# Nothing specified defaults to "execute" where the player immediately dies when entering the void zone. Saves some player time.
# $lift - When touching the void zone, the player will be lifted out via a levitation effect that allows them to reach the height they fell from.
# $return - When touching the void zone, the player is immediately teleported back to the last solid block they were standing on.

# In either lift or return modes, the player takes true damage when touching the void zone equal to the distance they fell (akin to fall damage)
# Players always take at least 4 damage.

# Death effects always happen at the last stable ground the player was standing on, never in the void zone or floating above the void.


# Other Rules:

# tax_count - takes away a portion of count of item (if the item is stolen)
# The number specified is the percentage taken. Any value unspecified, 0, or less disables this.

# tax_durability - takes away a portion of remaining durability (if the item is stolen)
# The number specified is the percentage taken. Any value unspecified, 0, or less disables this.

# tax_vanish - Percentage chance that a stolen item slot is deleted instead of stolen.
# Any value equal to or less than 0 (or unspecified) disables this.

# tax_retain_items - Items that would be stolen are not stolen.
# This is intended to combine this with taxes to change death mechanics.
# This does not stop items from being Tax Vanished

# progressive_tax - When set to 0, disabled.
# When set to 1, Taxes except Vanish double every death (capping at 80%). Every 5 minutes, taxes are reduced by one stage slowly back down to 1.
# When set to 2, Taxes except Vanish double every death (capping at 80%). Every 5 minutes, taxes are reduced by one stage slowly back down to 1.
# Additionally on 2, if a Tax would be increased above 100, the vanish tax is doubled instead.


# give_compass - Spawns in a Recovery Compass for the player.
# This compass is cleared from player inventories when death piles are reclaimed.
# The Compass has Vanishing so it is lost on death.

# fixed_home - When set to 0, no effect.
# When set to 1, all void deaths will cause the player's home location to be at a set point rather than their last safe point.
# When set to 2, all deaths will cause the player's home location to be set at a set point rather than their last safe point. (For all deaths)
# Set the point by setting scoreboard players set $force void_home.x <x coordinate>, with void_home.y and void_home.z for y and z point.
# Your forced point MUST be force loaded.


# Drop Rate Settings:

# xp_percent - The amount of experience recovered on death pile. (They will always drop all) When set to -1 or not set, the player retains all experience.

# use_difficulty - Difficulty will affect the likelihood of dropping an item. Set to 1 to activate.
# Normal will not change the likelihood.
# Easy will increase the total drop coeff by 33%.
# Hard will reduce the total drop coeff by 50%.
# This is calculated after drop_coeff and inv_coeff but before scale_coeff.

# drop_coeff: The number that controls how likely items are to be dropped. (Minimum of 1, Default of 5).
# The drop chance is equal to 1/(x-1), where x is drop coefficient. (So 5 is a 25% or 1/4 chance)
# Lower numbers make items more likely to drop.
# Higher numbers make items less likely to drop.

# This is per item, so each item individually has a chance to be dropped.
# This does not necessarily mean that a setting of 3 (1/2 or 50%) means that exactly half of the items will drop consistently.



# inv_coeff: The number that controls how inventory size increases drop_coeff. (Minimum of 1, Default of 9).
# This number is equivalent to the number of filled slots to raise the drop_coeff by 1 (making drops less likely).
# (Every "x" items, where x is this number will increase drop_coeff by 1.)
# TLDR - The higher this number, the more items drop in fuller inventories.
# Setting this to a number of slots greater than the size of the player inventory (e.g 50) will make this setting irrelevant.



# scale_coeff: The number that controls how the max coeff changes per item taken. (Minimum and Default of 0)
# When an item is taken successfully, the max coefficient will be increased by this value.
# This being set to a value above 0 will make an item less likely to be taken after the first. (And even less likely for each additional item taken)
# Resets at starting value each death.