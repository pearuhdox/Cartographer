title @s[scores={ca.sweeping=1..}] times 0 45 5
title @s[scores={ca.sweeping=1..}] title {"text":" "}

title @s[scores={ca.sweeping=1..,ca.sweeping_charges=4..}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sweeping=1..,ca.sweeping_charges=3}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sweeping=1..,ca.sweeping_charges=2}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sweeping=1..,ca.sweeping_charges=1}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sweeping=1..,ca.sweeping_charges=0}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]

tag @s[scores={ca.sweeping=1..}] add showing_sweeping
