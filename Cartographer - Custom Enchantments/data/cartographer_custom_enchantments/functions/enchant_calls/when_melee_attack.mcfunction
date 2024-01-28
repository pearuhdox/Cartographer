#Concealed Consume - Unaffected by misfortune
execute if entity @s[scores={ca.conceal_time=1..}] run function cartographer_custom_enchantments:enchant_effects/concealed/consume

# Fast Attack - Unaffected by misfortune
scoreboard players set $trigger ca.allow_fast_attack 0
execute unless score @s ca.atk_time matches 1.. if score @s ca.attack_speed matches 19.. if score @s ca.allow_fast_attack matches 1.. run scoreboard players set $trigger ca.allow_fast_attack 1

#Echo - Unaffected by misfortune
execute if entity @s[tag=!ca.echo_charge_taken,scores={ca.echo=1..}] run function cartographer_custom_enchantments:enchant_effects/echo/master

#Momentum Attack - Unaffected by misfortune
execute if entity @s[scores={ca.momentum=1..,ca.momentum_charge=2000..}] run function cartographer_custom_enchantments:enchant_effects/momentum/strike

#Do misfortune Check
execute unless score @s ca.curse_misfortune_main matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_melee_attack_branch

execute if score @s ca.curse_misfortune_main matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_misfortune/mainhand
execute if score @s ca.curse_misfortune_main matches 1.. if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_melee_attack_branch

#Do Random Melee Chance on base hit
scoreboard players set $success ca.attr_random_crit 0
execute if predicate bb:cant_crit if score @s ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/base_melee/start