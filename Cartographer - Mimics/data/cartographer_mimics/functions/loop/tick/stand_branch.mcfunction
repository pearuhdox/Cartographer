execute if block ~ ~ ~ air run function cartographer_mimics:mimic/summon_hurt
execute if entity @e[type=arrow,limit=1,sort=nearest,distance=..0.8,nbt={inGround:1b}] run function cartographer_mimics:mimic/summon_hurt
execute if entity @p[gamemode=!creative,distance=..6,scores={helper_open_trap=1..},nbt=!{ActiveEffects:[{Id:14b}]},predicate=!cartographer_mimics:mimic_disguised] run function cartographer_mimics:mimic/summon_trap

