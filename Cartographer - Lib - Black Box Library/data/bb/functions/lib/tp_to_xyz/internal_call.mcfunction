
data remove storage bbl:tp sudo_root.internal
data modify storage bbl:tp sudo_root.internal.x set from storage bbl:tp sudo_root.full[0]
data modify storage bbl:tp sudo_root.internal.y set from storage bbl:tp sudo_root.full[1]
data modify storage bbl:tp sudo_root.internal.z set from storage bbl:tp sudo_root.full[2]

function bb:lib/tp_to_xyz/macro with storage bbl:tp sudo_root.internal
