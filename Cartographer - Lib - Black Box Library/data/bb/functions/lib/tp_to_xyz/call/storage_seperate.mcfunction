
execute store result storage bbl:tp sudo_root.full[0] double 1 run data get storage bbl:tp sudo_root.x
execute store result storage bbl:tp sudo_root.full[1] double 1 run data get storage bbl:tp sudo_root.y
execute store result storage bbl:tp sudo_root.full[2] double 1 run data get storage bbl:tp sudo_root.z

function bb:lib/tp_to_xyz/call/storage
