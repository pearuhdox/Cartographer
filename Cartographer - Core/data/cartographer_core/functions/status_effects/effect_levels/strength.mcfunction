effect clear @a[scores={tempStrength=0}] strength



scoreboard players set @a[nbt={ActiveEffects:[{Id:9b,Amplifier:0b}]}] tempStrength 12000

scoreboard players set @a[nbt={ActiveEffects:[{Id:9b,Amplifier:1b}]}] tempStrength 6000


effect give @a[scores={strengthLevel=0,tempStrength=12000}] strength 600 0 true

effect give @a[scores={strengthLevel=1,tempStrength=12000}] strength 600 1 true

effect give @a[scores={strengthLevel=2,tempStrength=12000}] strength 600 2 true

effect give @a[scores={strengthLevel=3,tempStrength=12000}] strength 600 3 true

effect give @a[scores={strengthLevel=4,tempStrength=12000}] strength 600 4 true

effect give @a[scores={strengthLevel=5,tempStrength=12000}] strength 600 5 true


effect give @a[scores={strengthLevel=0,tempStrength=6000}] strength 300 0 true

effect give @a[scores={strengthLevel=1,tempStrength=6000}] strength 300 1 true

effect give @a[scores={strengthLevel=2,tempStrength=6000}] strength 300 2 true

effect give @a[scores={strengthLevel=3,tempStrength=6000}] strength 300 3 true

effect give @a[scores={strengthLevel=4,tempStrength=6000}] strength 300 4 true

effect give @a[scores={strengthLevel=5,tempStrength=6000}] strength 300 5 true



effect give @a[scores={strengthLevel=1}] strength 1000000 0 true

effect give @a[scores={strengthLevel=2}] strength 1000000 1 true

effect give @a[scores={strengthLevel=3}] strength 1000000 2 true

effect give @a[scores={strengthLevel=4}] strength 1000000 3 true

effect give @a[scores={strengthLevel=5}] strength 1000000 4 true



scoreboard players remove @a[scores={tempStrength=1..}] tempStrength 1