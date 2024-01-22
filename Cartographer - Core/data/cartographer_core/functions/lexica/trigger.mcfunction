#Lexica Dialogue Popup
execute if score @s ca.lexica_trig matches 1 run function cartographer_core:lexica/manual
execute if score @s ca.lexica_trig matches 2 run function cartographer_core:lexica/guide
execute if score @s ca.lexica_trig matches 3 run function cartographer_custom_statuses:lexica_calls/main
execute if score @s ca.lexica_trig matches 4 run function cartographer_custom_enchantments:lexica_calls/main
execute if score @s ca.lexica_trig matches 5 run function cartographer_mob_abilities:lexica_calls/main

execute if score @s ca.lexica_trig matches 101 run function cartographer_custom_statuses:lexica_calls/pages/category/bleeding
execute if score @s ca.lexica_trig matches 102 run function cartographer_custom_statuses:lexica_calls/pages/category/blindness
execute if score @s ca.lexica_trig matches 103 run function cartographer_custom_statuses:lexica_calls/pages/category/brittle
execute if score @s ca.lexica_trig matches 104 run function cartographer_custom_statuses:lexica_calls/pages/category/cloaked
execute if score @s ca.lexica_trig matches 105 run function cartographer_custom_statuses:lexica_calls/pages/category/vulnerability
execute if score @s ca.lexica_trig matches 106 run function cartographer_custom_statuses:lexica_calls/pages/category/infection
execute if score @s ca.lexica_trig matches 107 run function cartographer_custom_statuses:lexica_calls/pages/category/morph
execute if score @s ca.lexica_trig matches 108 run function cartographer_custom_statuses:lexica_calls/pages/category/oiled
execute if score @s ca.lexica_trig matches 109 run function cartographer_custom_statuses:lexica_calls/pages/category/charmed
execute if score @s ca.lexica_trig matches 110 run function cartographer_custom_statuses:lexica_calls/pages/category/shackled
execute if score @s ca.lexica_trig matches 111 run function cartographer_custom_statuses:lexica_calls/pages/category/shocking
execute if score @s ca.lexica_trig matches 112 run function cartographer_custom_statuses:lexica_calls/pages/category/stunned

execute if score @s ca.lexica_trig matches 201 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/main
#execute if score @s ca.lexica_trig matches 202 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/main_2
execute if score @s ca.lexica_trig matches 202 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/main
#execute if score @s ca.lexica_trig matches 204 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/main_2
#execute if score @s ca.lexica_trig matches 210 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/main_3
execute if score @s ca.lexica_trig matches 203 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/main
#execute if score @s ca.lexica_trig matches 206 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/main_2
execute if score @s ca.lexica_trig matches 204 run function cartographer_custom_enchantments:lexica_calls/pages/category/tools/main
execute if score @s ca.lexica_trig matches 205 run function cartographer_custom_enchantments:lexica_calls/pages/category/weapon/main
execute if score @s ca.lexica_trig matches 206 run function cartographer_custom_enchantments:lexica_calls/pages/category/other/main
execute if score @s ca.lexica_trig matches 207 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/main

execute if score @s ca.lexica_trig matches 211 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/duelist
execute if score @s ca.lexica_trig matches 212 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/echo
execute if score @s ca.lexica_trig matches 214 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/evocation
execute if score @s ca.lexica_trig matches 215 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/executioner
execute if score @s ca.lexica_trig matches 217 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/frostbite
execute if score @s ca.lexica_trig matches 218 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/hunter
execute if score @s ca.lexica_trig matches 219 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/lethality
execute if score @s ca.lexica_trig matches 221 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/singe
execute if score @s ca.lexica_trig matches 222 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/stunning
execute if score @s ca.lexica_trig matches 223 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/slamming
execute if score @s ca.lexica_trig matches 224 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/hex_eater
execute if score @s ca.lexica_trig matches 225 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/first_strike
execute if score @s ca.lexica_trig matches 226 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/sweeping
execute if score @s ca.lexica_trig matches 227 run function cartographer_custom_enchantments:lexica_calls/pages/category/melee/thrusting

execute if score @s ca.lexica_trig matches 230 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/adrenaline
execute if score @s ca.lexica_trig matches 231 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/agility
execute if score @s ca.lexica_trig matches 232 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/aquadynamic
execute if score @s ca.lexica_trig matches 233 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/cauterize
execute if score @s ca.lexica_trig matches 234 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/cleansing
execute if score @s ca.lexica_trig matches 235 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/concealed
execute if score @s ca.lexica_trig matches 236 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/confidence
execute if score @s ca.lexica_trig matches 237 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/desperation
execute if score @s ca.lexica_trig matches 238 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/disengage
execute if score @s ca.lexica_trig matches 239 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/energetic

execute if score @s ca.lexica_trig matches 240 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/evasion
execute if score @s ca.lexica_trig matches 241 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/frenzy
execute if score @s ca.lexica_trig matches 242 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/gravity
execute if score @s ca.lexica_trig matches 243 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/lifesteal
execute if score @s ca.lexica_trig matches 244 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/momentum
execute if score @s ca.lexica_trig matches 2008 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/poise
execute if score @s ca.lexica_trig matches 245 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/quake
execute if score @s ca.lexica_trig matches 246 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/rally
execute if score @s ca.lexica_trig matches 247 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/reconstruction
execute if score @s ca.lexica_trig matches 248 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/regeneration
execute if score @s ca.lexica_trig matches 249 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/resourceful

execute if score @s ca.lexica_trig matches 2001 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/satiation
execute if score @s ca.lexica_trig matches 2002 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/second_wind
execute if score @s ca.lexica_trig matches 2003 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/shielding
execute if score @s ca.lexica_trig matches 2004 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/sprint_dash
execute if score @s ca.lexica_trig matches 2005 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/starfall
execute if score @s ca.lexica_trig matches 2006 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/spurs
execute if score @s ca.lexica_trig matches 2007 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/stalwart
execute if score @s ca.lexica_trig matches 2008 run function cartographer_custom_enchantments:lexica_calls/pages/category/passive/lightborn

execute if score @s ca.lexica_trig matches 250 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/auto_charge
execute if score @s ca.lexica_trig matches 252 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/current
execute if score @s ca.lexica_trig matches 253 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/deadeye
execute if score @s ca.lexica_trig matches 255 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/explosive
execute if score @s ca.lexica_trig matches 258 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/fleetfoot
execute if score @s ca.lexica_trig matches 259 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/frost
execute if score @s ca.lexica_trig matches 260 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/hydraulic
execute if score @s ca.lexica_trig matches 262 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/overcharge
execute if score @s ca.lexica_trig matches 263 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/point_blank
execute if score @s ca.lexica_trig matches 264 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/repeating
execute if score @s ca.lexica_trig matches 265 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/ricochet
execute if score @s ca.lexica_trig matches 266 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/sharpshot
execute if score @s ca.lexica_trig matches 267 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/tempest
execute if score @s ca.lexica_trig matches 268 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/tempo_theft
execute if score @s ca.lexica_trig matches 269 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/trueshot

#Extra ranged enchant space
execute if score @s ca.lexica_trig matches 277 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/collapse
execute if score @s ca.lexica_trig matches 278 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/recoil
execute if score @s ca.lexica_trig matches 279 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/wavedash

execute if score @s ca.lexica_trig matches 276 run function cartographer_custom_enchantments:lexica_calls/pages/category/ranged/repulsion

execute if score @s ca.lexica_trig matches 270 run function cartographer_custom_enchantments:lexica_calls/pages/category/tools/eruption
execute if score @s ca.lexica_trig matches 271 run function cartographer_custom_enchantments:lexica_calls/pages/category/tools/resupply
execute if score @s ca.lexica_trig matches 272 run function cartographer_custom_enchantments:lexica_calls/pages/category/tools/sapper

execute if score @s ca.lexica_trig matches 280 run function cartographer_custom_enchantments:lexica_calls/pages/category/other/infinity
execute if score @s ca.lexica_trig matches 281 run function cartographer_custom_enchantments:lexica_calls/pages/category/other/soulbound
execute if score @s ca.lexica_trig matches 282 run function cartographer_custom_enchantments:lexica_calls/pages/category/other/unbreakable

execute if score @s ca.lexica_trig matches 290 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_clumsiness
execute if score @s ca.lexica_trig matches 291 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_drowning
execute if score @s ca.lexica_trig matches 292 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_encumbering
execute if score @s ca.lexica_trig matches 293 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_flammability
execute if score @s ca.lexica_trig matches 294 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_irreparability
execute if score @s ca.lexica_trig matches 295 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_jinxing
execute if score @s ca.lexica_trig matches 296 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_malevolence
execute if score @s ca.lexica_trig matches 297 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_regret
execute if score @s ca.lexica_trig matches 298 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_rusting
execute if score @s ca.lexica_trig matches 299 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_shattering
execute if score @s ca.lexica_trig matches 300 run function cartographer_custom_enchantments:lexica_calls/pages/category/curses/curse_two_handed

execute if score @s ca.lexica_trig matches 301 run function cartographer_mob_abilities:lexica_calls/pages/category/active/main
execute if score @s ca.lexica_trig matches 302 run function cartographer_mob_abilities:lexica_calls/pages/category/active/main_2
execute if score @s ca.lexica_trig matches 306 run function cartographer_mob_abilities:lexica_calls/pages/category/active/main_3

execute if score @s ca.lexica_trig matches 303 run function cartographer_mob_abilities:lexica_calls/pages/category/morbid/main
execute if score @s ca.lexica_trig matches 304 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/main
execute if score @s ca.lexica_trig matches 305 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/main

execute if score @s ca.lexica_trig matches 309 run function cartographer_mob_abilities:lexica_calls/pages/category/active/ambush
execute if score @s ca.lexica_trig matches 310 run function cartographer_mob_abilities:lexica_calls/pages/category/active/augmenter
execute if score @s ca.lexica_trig matches 311 run function cartographer_mob_abilities:lexica_calls/pages/category/active/charge
execute if score @s ca.lexica_trig matches 312 run function cartographer_mob_abilities:lexica_calls/pages/category/active/command
execute if score @s ca.lexica_trig matches 313 run function cartographer_mob_abilities:lexica_calls/pages/category/active/duplicator
execute if score @s ca.lexica_trig matches 314 run function cartographer_mob_abilities:lexica_calls/pages/category/active/nova
execute if score @s ca.lexica_trig matches 315 run function cartographer_mob_abilities:lexica_calls/pages/category/active/haunt
execute if score @s ca.lexica_trig matches 316 run function cartographer_mob_abilities:lexica_calls/pages/category/active/healer
execute if score @s ca.lexica_trig matches 317 run function cartographer_mob_abilities:lexica_calls/pages/category/active/hookshot
execute if score @s ca.lexica_trig matches 319 run function cartographer_mob_abilities:lexica_calls/pages/category/active/laser
execute if score @s ca.lexica_trig matches 321 run function cartographer_mob_abilities:lexica_calls/pages/category/active/barrage
execute if score @s ca.lexica_trig matches 322 run function cartographer_mob_abilities:lexica_calls/pages/category/active/orbit
execute if score @s ca.lexica_trig matches 323 run function cartographer_mob_abilities:lexica_calls/pages/category/active/quickdraw
execute if score @s ca.lexica_trig matches 3453 run function cartographer_mob_abilities:lexica_calls/pages/category/active/reflect
execute if score @s ca.lexica_trig matches 314 run function cartographer_mob_abilities:lexica_calls/pages/category/active/rift
execute if score @s ca.lexica_trig matches 318 run function cartographer_mob_abilities:lexica_calls/pages/category/active/sidearm
execute if score @s ca.lexica_trig matches 325 run function cartographer_mob_abilities:lexica_calls/pages/category/active/smash
execute if score @s ca.lexica_trig matches 320 run function cartographer_mob_abilities:lexica_calls/pages/category/active/sniper_shot
execute if score @s ca.lexica_trig matches 326 run function cartographer_mob_abilities:lexica_calls/pages/category/active/storm
execute if score @s ca.lexica_trig matches 327 run function cartographer_mob_abilities:lexica_calls/pages/category/active/sweep
execute if score @s ca.lexica_trig matches 328 run function cartographer_mob_abilities:lexica_calls/pages/category/active/volley
execute if score @s ca.lexica_trig matches 329 run function cartographer_mob_abilities:lexica_calls/pages/category/active/summoner
execute if score @s ca.lexica_trig matches 3454 run function cartographer_mob_abilities:lexica_calls/pages/category/active/infuser
execute if score @s ca.lexica_trig matches 3455 run function cartographer_mob_abilities:lexica_calls/pages/category/active/spin_shot

execute if score @s ca.lexica_trig matches 330 run function cartographer_mob_abilities:lexica_calls/pages/category/morbid/bloodthirst
execute if score @s ca.lexica_trig matches 334 run function cartographer_mob_abilities:lexica_calls/pages/category/morbid/corpse_crawler
execute if score @s ca.lexica_trig matches 335 run function cartographer_mob_abilities:lexica_calls/pages/category/morbid/exalted
execute if score @s ca.lexica_trig matches 336 run function cartographer_mob_abilities:lexica_calls/pages/category/morbid/parting_gift
execute if score @s ca.lexica_trig matches 337 run function cartographer_mob_abilities:lexica_calls/pages/category/morbid/pyromania
execute if score @s ca.lexica_trig matches 338 run function cartographer_mob_abilities:lexica_calls/pages/category/morbid/spectral

execute if score @s ca.lexica_trig matches 3041 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/projectile/main
execute if score @s ca.lexica_trig matches 3043 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/other/main

execute if score @s ca.lexica_trig matches 3413 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/other/breaker
execute if score @s ca.lexica_trig matches 3423 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/other/enderport
execute if score @s ca.lexica_trig matches 3433 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/other/potion_bag
execute if score @s ca.lexica_trig matches 3443 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/other/quiver
execute if score @s ca.lexica_trig matches 3463 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/other/summoner
execute if score @s ca.lexica_trig matches 3473 run function cartographer_mob_abilities:lexica_calls/pages/category/passive/other/touch

execute if score @s ca.lexica_trig matches 3051 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/main
execute if score @s ca.lexica_trig matches 3052 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/main

execute if score @s ca.lexica_trig matches 3511 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/alchemist
execute if score @s ca.lexica_trig matches 3521 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/blazing
execute if score @s ca.lexica_trig matches 3531 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/glacial
execute if score @s ca.lexica_trig matches 3541 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/horrifying
execute if score @s ca.lexica_trig matches 3551 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/overloading
execute if score @s ca.lexica_trig matches 3561 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/venemous
execute if score @s ca.lexica_trig matches 3571 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/webbing
execute if score @s ca.lexica_trig matches 3581 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/hit/zephyrous

execute if score @s ca.lexica_trig matches 3512 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/aftershock
execute if score @s ca.lexica_trig matches 3522 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/amplify
execute if score @s ca.lexica_trig matches 3532 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/carapace
execute if score @s ca.lexica_trig matches 3542 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/cloaking
execute if score @s ca.lexica_trig matches 3552 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/evocative
execute if score @s ca.lexica_trig matches 3562 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/legionary
execute if score @s ca.lexica_trig matches 3572 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/acrobatic
execute if score @s ca.lexica_trig matches 3582 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/shrieker
execute if score @s ca.lexica_trig matches 3592 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/volatile
execute if score @s ca.lexica_trig matches 3602 run function cartographer_mob_abilities:lexica_calls/pages/category/traits/other/warping

execute if score @s ca.lexica_trig matches 3700 run function cartographer_mob_abilities:lexica_calls/pages/category/projectiles/main

execute if score @s ca.lexica_trig matches 3701 run function cartographer_mob_abilities:lexica_calls/pages/category/projectiles/boomerang
execute if score @s ca.lexica_trig matches 3702 run function cartographer_mob_abilities:lexica_calls/pages/category/projectiles/grenade
execute if score @s ca.lexica_trig matches 3703 run function cartographer_mob_abilities:lexica_calls/pages/category/projectiles/lightning
execute if score @s ca.lexica_trig matches 3704 run function cartographer_mob_abilities:lexica_calls/pages/category/projectiles/magic_missile
execute if score @s ca.lexica_trig matches 3705 run function cartographer_mob_abilities:lexica_calls/pages/category/projectiles/needle
execute if score @s ca.lexica_trig matches 3706 run function cartographer_mob_abilities:lexica_calls/pages/category/projectiles/rift
execute if score @s ca.lexica_trig matches 3707 run function cartographer_mob_abilities:lexica_calls/pages/category/projectiles/trap


#Reset Lexica Trigger Score
scoreboard players set @s ca.lexica_trig 0