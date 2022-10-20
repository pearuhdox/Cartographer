advancement revoke @s from cartographer_charon:death_note/death_drop
advancement revoke @s from cartographer_charon:death_note/drop_boxes
advancement revoke @s from cartographer_charon:death_note/protected_hotbar

#Mode Popups
execute if score $death_drop charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/death_drop
execute if score $collector charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/collector
execute if score $trader charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/trader
execute if score $cage charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/cage

#Negative Advancement Popups
execute if score $always_drop_boxes charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/drop_boxes
execute if score $spawner_defenses charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/spawner_defenses
execute if score $tax_count charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/tax_count
execute if score $tax_durability charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/tax_durability
execute if score $tax_vanish charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/tax_vanish

execute if score $progressive_tax charon.gmr matches 1 run advancement grant @s only cartographer_charon:death_note/tax_progressive
execute if score $progressive_tax charon.gmr matches 2 run advancement grant @s only cartographer_charon:death_note/tax_progressive_vanish

execute if score $progressive_tax charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/tax_count
execute if score $progressive_tax charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/tax_durability
execute if score $progressive_tax charon.gmr matches 2 run advancement grant @s only cartographer_charon:death_note/tax_vanish

#Positive Popups
execute if score $never_drop_hotbar charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/protected_hotbar
execute if score $never_drop_armor charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/protected_armor
execute if score $never_drop_offhand charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/protected_offhand
execute if score $never_drop_backpack charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/protected_backpack
execute if score $tax_retain_items charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/insurance