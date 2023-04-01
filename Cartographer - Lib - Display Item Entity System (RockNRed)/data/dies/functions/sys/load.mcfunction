
#tellraw @a "Reloaded!"

#Add scoreboards
scoreboard objectives add dies.master dummy
scoreboard objectives add dies.trigger trigger
scoreboard objectives add dies.place_item_frame minecraft.used:minecraft.item_frame
scoreboard objectives add dies.object.frame_facing dummy
scoreboard objectives add dies.object.display.pose dummy
scoreboard objectives add dies.object.display.rotation dummy
scoreboard objectives add dies.object.display.size dummy
scoreboard objectives add dies.object.item_type dummy
scoreboard objectives add dies.option.player.action_feedback dummy
scoreboard objectives add dies.option.player.sounds.gui dummy
scoreboard objectives add dies.option.player.sounds.world dummy
scoreboard objectives add dies.relog minecraft.custom:minecraft.leave_game
scoreboard objectives add give_placeable_item trigger

#Assume default setting values
execute unless score $gamerule.default.render_distance dies.master matches -999999..999999 run scoreboard players set $gamerule.default.render_distance dies.master 16
execute unless score $gamerule.default.item_size dies.master matches -999999..999999 run scoreboard players set $gamerule.default.item_size dies.master 4
execute unless score $gamerule.default.light dies.master matches -999999..999999 run scoreboard players set $gamerule.default.light dies.master -1
execute unless score $gamerule.default.3d_armor dies.master matches -999999..999999 run scoreboard players set $gamerule.default.3d_armor dies.master 1
execute unless score $gamerule.default.pose dies.master matches -999999..999999 run scoreboard players set $gamerule.default.pose dies.master 1

execute unless score $gamerule.global.enter_inventory dies.master matches -999999..999999 run scoreboard players set $gamerule.global.enter_inventory dies.master 1
