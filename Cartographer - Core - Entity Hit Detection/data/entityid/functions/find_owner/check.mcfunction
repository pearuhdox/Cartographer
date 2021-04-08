#comparing UUIDs
data modify storage entityid:main entity set from entity @s UUID
execute store success score test= entityid run data modify storage entityid:main entity set from storage entityid:main projectile
execute if score test= entityid matches 0 run function entityid:find_owner/found_match