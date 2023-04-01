
execute on vehicle run tag @s add dies.die
execute on vehicle on passengers run kill @s
kill @e[tag=dies.die,distance=..3,limit=1,sort=nearest]
