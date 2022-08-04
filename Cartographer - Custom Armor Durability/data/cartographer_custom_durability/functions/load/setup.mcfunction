#Setup all necessary helper scoreboards
scoreboard objectives add helper_tier dummy
scoreboard objectives add ca.break_head minecraft.mined:minecraft.player_head
scoreboard objectives add ca.break_whead minecraft.mined:minecraft.player_wall_head
scoreboard objectives add ca.x_seed dummy
scoreboard objectives add ca.y_seed dummy
scoreboard objectives add ca.z_seed dummy
scoreboard objectives add ca.derived_seed dummy

scoreboard objectives add ca.loot_sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add altar_lock dummy

scoreboard objectives add ca.head_dur dummy
scoreboard objectives add ca.body_dur dummy
scoreboard objectives add ca.legs_dur dummy
scoreboard objectives add ca.feet_dur dummy

scoreboard objectives add ca.head_unb dummy
scoreboard objectives add ca.body_unb dummy
scoreboard objectives add ca.legs_unb dummy
scoreboard objectives add ca.feet_unb dummy

scoreboard objectives add ca.dur_values dummy
scoreboard objectives add ca.total_armor dummy
scoreboard objectives add ca.total_hit minecraft.custom:minecraft.damage_taken

#Shulker Box
setblock 4206900 18 4206899 minecraft:purple_shulker_box replace

#Setup LoE data space
function cartographer_custom_durability:load/integration/active/clear