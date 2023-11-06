title @s[tag=!showing_echo,scores={ca.echo=1..}] times 0 45 5
title @s[tag=!showing_echo,scores={ca.echo=1..}] title {"text":" "}

title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=4..}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=3}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=2}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=1}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=0}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]

tag @s[scores={ca.echo=1..}] add showing_echo