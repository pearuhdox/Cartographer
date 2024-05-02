data modify storage ca.indicator Ammo set value 0

execute if score @s ca.repeating matches 1..7 run data modify storage ca.indicator Ammo set from entity @s SelectedItem.tag.Ammo
execute if score @s ca.repeating matches 11..17 run data modify storage ca.indicator Ammo set from entity @s Inventory[{Slot:-106b}].tag.Ammo
execute store result score @s ca.ind_val run data get storage ca.indicator Ammo

title @s[scores={ca.ind_val=8,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"8","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=7,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"7","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=6,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"6","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=5,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"5","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=4,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=3,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=2,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=1,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=0,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> 🏹","color":"red","italic":false}]

title @s[scores={ca.ind_val=8,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"8","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=7,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"7","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=6,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"6","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=5,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"5","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=4,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=3,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=2,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=1,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=0,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> 🏹","color":"red","italic":false}]

title @s[tag=showing_repeating,scores={ca.repeating=0}] actionbar {"text":" ","color":"yellow","italic":false}

tag @s[scores={ca.repeating=1..}] add showing_repeating
