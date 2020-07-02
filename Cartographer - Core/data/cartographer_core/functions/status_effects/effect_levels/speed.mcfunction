effect clear @a[scores={tempSpeed=0}] speed



scoreboard players set @a[nbt={ActiveEffects:[{Id:9b,Amplifier:2b}]}] tempSpeed 12000

scoreboard players set @a[nbt={ActiveEffects:[{Id:9b,Amplifier:3b}]}] tempSpeed 6000


effect give @a[scores={speedLevel=0,tempSpeed=12000}] speed 600 0 true

effect give @a[scores={speedLevel=1,tempSpeed=12000}] speed 600 1 true

effect give @a[scores={speedLevel=2,tempSpeed=12000}] speed 600 2 true

effect give @a[scores={speedLevel=3,tempSpeed=12000}] speed 600 3 true

effect give @a[scores={speedLevel=4,tempSpeed=12000}] speed 600 4 true

effect give @a[scores={speedLevel=5,tempSpeed=12000}] speed 600 5 true


effect give @a[scores={speedLevel=0,tempSpeed=6000}] speed 300 0 true

effect give @a[scores={speedLevel=1,tempSpeed=6000}] speed 300 1 true

effect give @a[scores={speedLevel=2,tempSpeed=6000}] speed 300 2 true

effect give @a[scores={speedLevel=3,tempSpeed=6000}] speed 300 3 true

effect give @a[scores={speedLevel=4,tempSpeed=6000}] speed 300 4 true

effect give @a[scores={speedLevel=5,tempSpeed=6000}] speed 300 5 true



effect give @a[scores={speedLevel=1}] speed 1000000 0 true

effect give @a[scores={speedLevel=2}] speed 1000000 1 true

effect give @a[scores={speedLevel=3}] speed 1000000 2 true

effect give @a[scores={speedLevel=4}] speed 1000000 3 true

effect give @a[scores={speedLevel=5}] speed 1000000 4 true



scoreboard players remove @a[scores={tempSpeed=1..}] tempSpeed 1