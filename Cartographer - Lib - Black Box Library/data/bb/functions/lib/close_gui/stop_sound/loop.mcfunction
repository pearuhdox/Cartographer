
stopsound @s * minecraft:block.portal.trigger

scoreboard players add @s bbl.close_gui.stop_portal_sound 1

execute if score @s bbl.close_gui.stop_portal_sound matches 5.. run scoreboard players set @s bbl.close_gui.stop_portal_sound 0
