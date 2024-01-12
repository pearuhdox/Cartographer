summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[1.0d,0.2d,0.0d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[-1.0d,0.2d,0.0d]}

summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[0.0d,0.2d,1.0d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[0.0d,0.2d,-1.0d]}

summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[0.924d,0.2d,0.383d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[0.707d,0.2d,0.707d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[0.383d,0.2d,0.924d]}

summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[-0.383d,0.2d,0.924d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[-0.707d,0.2d,0.707d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[-0.924d,0.2d,0.383d]}

summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[-0.383d,0.2d,-0.924d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[-0.707d,0.2d,-0.707d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[-0.924d,0.2d,-0.383d]}

summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[0.383d,0.2d,-0.924d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[0.707d,0.2d,-0.707d]}
summon arrow ~ ~ ~ {Tags:["ca.pot_trap_arrow"],damage:4.0d,Motion:[0.924d,0.2d,-0.383d]}

data modify storage cartographer_loot_additions:pot_trap arrow set value {}

data modify storage cartographer_loot_additions:pot_trap arrow set from entity @s Item

execute as @e[type=arrow,limit=16,distance=..1,sort=nearest,tag=ca.pot_trap_arrow] at @s run function cartographer_loot_additions:drops/do_drops/pots/action/parse_drop/interactions/arrow_branch

kill @s