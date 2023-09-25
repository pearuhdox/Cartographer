summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:soul_torch"},Time:1,Motion:[0.0,-10.0,0.0]}

playsound minecraft:block.wood.place player @a ~ ~ ~ 1 0.75


#Torch Take
data modify storage bbl:vanilla_clear sudo_root.item_id set value "minecraft:soul_torch"

#Amount to clear.
###If set to 0, it will return the count in "$return_count bbl.storage".
###If set to a number greater then 0 it will clear that amount of the specified item, and cancel its process when it has done so (For optimization, so don't expect an accurate count in the aforementioned score if you set higher then 0!)
scoreboard players set $clear_count bbl.storage 1

#System call
function bb:lib/vanilla_item_clear/main