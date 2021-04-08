#registering entities
execute as @e[tag=!entityid.registered] run function entityid:register

#player listen handling
execute as @a run function entityid:listen