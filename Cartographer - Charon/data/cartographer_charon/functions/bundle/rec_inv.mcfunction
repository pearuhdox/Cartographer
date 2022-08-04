#writing to temp
data modify storage cartographer_charon:player temp set from storage inv:main inv.all[0]
data remove storage inv:main inv.all[0]

#find
execute if data storage cartographer_charon:player temp.tag{DeathBundle:1b} run function cartographer_charon:bundle/rec_unbundle

#add modified slot to player inventory stack
execute unless data storage cartographer_charon:player temp.tag{DeathBundle:1b} run data modify storage cartographer_charon:player inv append from storage cartographer_charon:player temp

#looping
execute if data storage inv:main inv.all[0] run function cartographer_charon:bundle/rec_inv