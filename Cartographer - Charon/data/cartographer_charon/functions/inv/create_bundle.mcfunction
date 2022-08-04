data modify storage cartographer_charon:bundle bundle set value {id:"minecraft:bundle",Count:1,tag:{DeathBundle:1b}}
execute store result score $tc dt.var if data entity 00000001-0000-0007-0000-001b0000000b Offers.Recipes[]
scoreboard players add $tc dt.var 1
setblock 271101 1 271101 oak_sign{Color:"-1",Text1:'[{"selector":"@p[tag=the_one_dying]","color":"#6135F2","italic":false},{"text":"\'s Valuables (#","color":"#6135F2","italic":false},{"score":{"name":"@p[tag=the_one_dying]","objective":"charon.death_count"},"color":"#6135F2","italic":false},{"text":")","color":"#6135F2"}]'} destroy
data modify storage cartographer_charon:bundle bundle.tag.display.Name set from block 271101 1 271101 Text1