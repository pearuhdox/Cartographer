function bb:lib/pldata/read

data modify storage bbl:pldata sudo_root.working_data.Charon set value []
data modify storage bbl:pldata sudo_root.working_data.CharonHomePos set from entity @s Pos

function bb:lib/pldata/write