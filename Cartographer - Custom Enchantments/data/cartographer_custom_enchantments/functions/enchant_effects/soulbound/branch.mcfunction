execute if entity @s[type=item,nbt={Item:{tag:{CustomEnchantments:[{id:"curse_shattering"}]}}}] run function cartographer_custom_enchantments:enchant_effects/curse_shattering
data merge entity @s {Age:-32767,Health:1000000,NoGravity:1,Motion:[0.0,0.0,0.0],Glowing:1,PickupDelay:0}
tp @s 4206900 256 4206900