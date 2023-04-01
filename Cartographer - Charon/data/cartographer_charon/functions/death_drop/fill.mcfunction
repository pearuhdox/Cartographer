data modify entity @s item.tag.DeathBundle set from storage cartographer_charon:bundle bundle
tag @s remove new

execute on passengers if entity @s[type=text_display] run data modify entity @s text set from storage cartographer_charon:bundle bundle.tag.display.Name

team join CharonCageVisual @s