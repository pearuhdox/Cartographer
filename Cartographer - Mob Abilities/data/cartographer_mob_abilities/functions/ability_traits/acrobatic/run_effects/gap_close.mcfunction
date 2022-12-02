execute if entity @s[tag=ca.acro_gap_close] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/gap_close

execute if entity @s[tag=ca.has_gap_closed] unless entity @s[tag=ca.volley] unless entity @s[tag=ca.smash] unless entity @s[tag=ca.laser] unless entity @s[tag=ca.haunt] unless entity @s[tag=ca.sniper_shot] unless entity @s[tag=ca.charge] unless entity @s[tag=ca.sweep] unless entity @s[tag=ca.quickdraw] unless entity @s[tag=ca.nova] unless entity @s[tag=ca.storm] if score @s cooldown matches 0 run scoreboard players remove @s ability_charge 1
