execute if entity @s[tag=ca.acro_strafe] at @s run function cartographer_mob_abilities:ability_traits/acrobatic/strafe


#execute if entity @s[tag=ca.has_strafed] unless entity @s[tag=ca.charge] unless entity @s[tag=ca.sweep] unless entity @s[tag=ca.quickdraw] unless entity @s[tag=ca.nova] unless entity @s[tag=ca.storm] if score @s cooldown matches 0 run scoreboard players remove @s ability_charge 1
