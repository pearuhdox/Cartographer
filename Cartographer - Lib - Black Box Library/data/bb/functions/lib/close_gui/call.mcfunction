
execute store result storage bbl:close_gui sudo_root.portal_delay.creative int 1 run gamerule playersNetherPortalCreativeDelay
execute store result storage bbl:close_gui sudo_root.portal_delay.default int 1 run gamerule playersNetherPortalDefaultDelay

gamerule playersNetherPortalCreativeDelay 1000
gamerule playersNetherPortalDefaultDelay 1000

function bb:lib/tp_to_xyz/get_xyz

function bb:lib/pldata/read
data modify storage bbl:pldata sudo_root.working_data.close_gui.xyz set from storage bbl:pldata sudo_root.working_data.tp_to_xyz_saved_pos
function bb:lib/pldata/write

tp @s 4206856 319 4206871
tag @s add bbl.tp_back_from_portal
