
function bb:lib/pldata/read
data modify storage bbl:pldata sudo_root.full set from storage bbl:pldata sudo_root.working_data.close_gui.xyz

function bb:lib/tp_to_xyz/call/storage

function bb:lib/close_gui/return_gamerules with storage bbl:close_gui sudo_root.portal_delay

tag @s remove bbl.tp_back_from_portal
scoreboard players set @s bbl.close_gui.stop_portal_sound 1
