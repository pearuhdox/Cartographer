data modify entity @s HandItems[0] set from storage cartographer_charon:bundle bundle

setblock 271101 1 271101 oak_sign{front_text:{messages:['[{"selector":"@p[tag=the_one_dying]","color":"#94E1FE","italic":false},{"text":"\'s Shade (#","color":"#94E1FE","italic":false},{"score":{"name":"@p[tag=the_one_dying]","objective":"charon.death_count"},"color":"#94E1FE","italic":false},{"text":")","color":"#94E1FE","italic":false}]','{"text":""}','{"text":""}','{"text":""}']}} destroy
data modify entity @s CustomName set from block 271101 1 271101 front_text.messages[0]

setblock 271101 1 271101 oak_sign{front_text:{messages:['[{"text":"Hold [","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":"] to\\nrevive ","color":"white","italic":false},{"selector":"@p[tag=the_one_dying]","color":"#94E1FE","italic":false}]','{"text":""}','{"text":""}','{"text":""}']}} destroy
execute on passengers if entity @s[tag=ca.charon_shade_text,type=text_display] run data modify entity @s text set from block 271101 1 271101 front_text.messages[0]

tag @s remove new

