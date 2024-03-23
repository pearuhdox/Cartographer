#writing data from item into storage
data modify storage ltos:main data set from entity @s Item.tag

#macro data init
data modify storage ltos:main macro set value {killer_uuid:"-",entity_uuid:"-"}

#getting killed entity uuid
data modify storage gu:main in set from storage ltos:main data.entity_uuid
function gu:generate_without_context
data modify storage ltos:main macro.entity_uuid set from storage gu:main out

#getting killer uuid
data modify storage ltos:main uuid set value "none"
execute if data storage ltos:main data.killer_uuid run data modify storage ltos:main uuid set from storage ltos:main data.killer_uuid
execute if data storage ltos:main data.killer_owner_uuid run data modify storage ltos:main uuid set from storage ltos:main data.killer_owner_uuid
data modify storage gu:main in set from storage ltos:main uuid
execute if data storage ltos:main uuid[0] run function gu:generate_without_context
execute if data storage ltos:main uuid[0] run data modify storage ltos:main macro.killer_uuid set from storage gu:main out

#running tag at entity pre-killer
function ltos:specify_output/entity/as_entity_call with storage ltos:main macro

#running tag as killer
function ltos:specify_output/entity/as_killer_call with storage ltos:main macro

#running function as entity
function ltos:specify_output/entity/as_killed_entity_call with storage ltos:main macro

#terminating item
kill @s