scoreboard players reset * entityid
execute as @e[type=!#entityid:id_skip] run function entityid:reregister
data modify storage entityid:players all set value []