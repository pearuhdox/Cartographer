execute if score @s ca.effect_stun matches 1.. run function cartographer_custom_statuses:tick_effects/indicators/stunned

execute if entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s ca.effect_stun matches 1.. run function cartographer_custom_statuses:tick_effects/indicators/vulnerable
execute if entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s ca.effect_stun matches 1.. run tag @s add vuln_handled

execute if score @s ca.effect_shock matches 1.. unless entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s ca.effect_stun matches 1.. run function cartographer_custom_statuses:tick_effects/indicators/shocked
execute if score @s ca.effect_shock matches 1.. unless entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s ca.effect_stun matches 1.. run tag @s add shock_handled

execute if score @s ca.effect_bleed matches 1.. unless score @s ca.effect_shock matches 1.. unless entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s ca.effect_stun matches 1.. run function cartographer_custom_statuses:tick_effects/indicators/bleed
execute if score @s ca.effect_bleed matches 1.. unless score @s ca.effect_shock matches 1.. unless entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s ca.effect_stun matches 1.. run tag @s add bleed_handled

execute as @s positioned ~ ~0.25 ~ run function cartographer_custom_statuses:tick_effects/indicators/indicator_second_branch