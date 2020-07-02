effect clear @a[scores={tempHealth=0,healthLevel=0}] health_boost



scoreboard players set @a[nbt={ActiveEffects:[{Id:9b,Amplifier:4b}]}] tempHealth 12000


effect give @a[scores={healthLevel=0,tempHealth=12000}] health_boost 599 0 true

effect give @a[scores={healthLevel=1,tempHealth=12000}] health_boost 599 1 true

effect give @a[scores={healthLevel=2,tempHealth=12000}] health_boost 599 2 true

effect give @a[scores={healthLevel=3,tempHealth=12000}] health_boost 599 3 true

effect give @a[scores={healthLevel=4,tempHealth=12000}] health_boost 599 4 true

effect give @a[scores={healthLevel=5,tempHealth=12000}] health_boost 599 5 true


effect give @a[scores={healthLevel=0,tempHealth=12000}] instant_health 1 0 true

effect give @a[scores={healthLevel=1,tempHealth=12000}] instant_health 1 1 true

effect give @a[scores={healthLevel=2,tempHealth=12000}] instant_health 1 2 true

effect give @a[scores={healthLevel=3,tempHealth=12000}] instant_health 1 3 true

effect give @a[scores={healthLevel=4,tempHealth=12000}] instant_health 1 4 true

effect give @a[scores={healthLevel=5,tempHealth=12000}] instant_health 1 5 true



effect give @a[scores={healthLevel=1},nbt=!{ActiveEffects:[{Id:21b}]}] health_boost 1000000 0 true

effect give @a[scores={healthLevel=2},nbt=!{ActiveEffects:[{Id:21b}]}] health_boost 1000000 1 true

effect give @a[scores={healthLevel=3},nbt=!{ActiveEffects:[{Id:21b}]}] health_boost 1000000 2 true

effect give @a[scores={healthLevel=4},nbt=!{ActiveEffects:[{Id:21b}]}] health_boost 1000000 3 true

effect give @a[scores={healthLevel=5},nbt=!{ActiveEffects:[{Id:21b}]}] health_boost 1000000 4 true



effect give @a[scores={healthLevel=1,tempHealth=0},tag=!max_heal] instant_health 1 0 true

effect give @a[scores={healthLevel=2,tempHealth=0},tag=!max_heal] instant_health 1 1 true

effect give @a[scores={healthLevel=3,tempHealth=0},tag=!max_heal] instant_health 1 2 true

effect give @a[scores={healthLevel=4,tempHealth=0},tag=!max_heal] instant_health 1 3 true

effect give @a[scores={healthLevel=5,tempHealth=0},tag=!max_heal] instant_health 1 4 true



tag @a[scores={healthLevel=1..,tempHealth=0}] add max_heal

tag @a[scores={tempHealth=1},tag=max_heal] remove max_heal

scoreboard players remove @a[scores={tempHealth=1..}] tempHealth 1