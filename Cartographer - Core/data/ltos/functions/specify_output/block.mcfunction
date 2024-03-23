#writing data from item into storage
data modify storage ltos:main data set from entity @s Item.tag

#getting uuid
data modify storage ltos:main uuid set value "none"
data modify storage ltos:main macro set value {uuid:"-"}
execute if data storage ltos:main data.destroyer_uuid run data modify storage ltos:main uuid set from storage ltos:main data.destroyer_uuid
execute if data storage ltos:main data.destroyer_owner_uuid run data modify storage ltos:main uuid set from storage ltos:main data.destroyer_owner_uuid
data modify storage gu:main in set from storage ltos:main uuid
execute if data storage ltos:main uuid[0] run function gu:generate_without_context
execute if data storage ltos:main uuid[0] run data modify storage ltos:main macro.uuid set from storage gu:main out

#running tag at block pre-entity
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function #ltos:as_block

#running tag as entity
function ltos:specify_output/block/as_destroyer_call with storage ltos:main macro

#running function as block
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function #ltos:as_destroyed_block

#terminating item
kill @s