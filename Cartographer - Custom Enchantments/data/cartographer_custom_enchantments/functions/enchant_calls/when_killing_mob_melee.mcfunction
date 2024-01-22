
#Melee effects run on melee kills only
execute if score @s ca.deal_mel_dmg matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee_branch
execute if score @s ca.deal_mel_dmg2 matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee_branch
execute if score @s ca.deal_mel_dmg3 matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_killing_mob_melee_branch