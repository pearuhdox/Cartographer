title @s[scores={ca.evocation=1..,ca.evocation_charges=4..}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.evocation=1..,ca.evocation_charges=3}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.evocation=1..,ca.evocation_charges=2}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.evocation=1..,ca.evocation_charges=1}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.evocation=1..,ca.evocation_charges=0}] actionbar [{"text":"⚔ <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> ⚔","color":"red","italic":false}]

title @s[tag=showing_evocation,scores={ca.evocation=0}] actionbar {"text":" ","color":"yellow","italic":false}

tag @s[scores={ca.evocation=1..}] add showing_evocation
