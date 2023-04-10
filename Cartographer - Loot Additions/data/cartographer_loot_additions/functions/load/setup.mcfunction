#Setup all necessary helper scoreboards
scoreboard objectives add helper_tier dummy
scoreboard objectives add ca.break_head minecraft.mined:minecraft.player_head
scoreboard objectives add ca.break_whead minecraft.mined:minecraft.player_wall_head
scoreboard objectives add ca.x_seed dummy
scoreboard objectives add ca.y_seed dummy
scoreboard objectives add ca.z_seed dummy
scoreboard objectives add ca.derived_seed dummy

scoreboard objectives add ca.place_frame minecraft.used:minecraft.glow_item_frame

scoreboard objectives add ca.loot_sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add ca.frame_count dummy

scoreboard objectives add ca.creative_ct dummy

scoreboard objectives add altar_lock dummy

scoreboard objectives add la.filled_slots dummy
scoreboard objectives add la.filled_comp dummy

scoreboard objectives add ca.facing dummy

scoreboard objectives add ca.locked_stage dummy

scoreboard objectives add ca.soul_total dummy
scoreboard objectives add ca.soul_count dummy

#Kill Score
scoreboard objectives remove ca.get_soul
scoreboard objectives add ca.get_soul dummy

scoreboard objectives add ca.break_head_look_time dummy

scoreboard objectives add ca.loot_timer dummy
scoreboard objectives add ca.loot_var dummy

scoreboard objectives add ca.la_respawn minecraft.custom:minecraft.time_since_death

scoreboard objectives add ca.loot_multiplier dummy
execute unless score $scale ca.loot_multiplier matches 1.. run scoreboard players set $scale ca.loot_multiplier 2

#Create the loot giving box.
setblock 4206900 2 4206900 purple_shulker_box replace

#Create template for all player head loot.
setblock 4206900 16 4206900 air replace

#Create UUID for testing
summon marker 4206900 0 4206900 {UUID:[I;823664661,303371552,-2062286848,35148049]}


#Setup LoE data space
function cartographer_loot_additions:load/integration/active/clear

execute as @a unless entity @s[scores={helper_tier=0..}] run scoreboard players set @s helper_tier 0