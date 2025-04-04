(global object_definition w_assault_rifle "weapons\assault rifle\assault rifle")
(global object_definition w_flamethrower "weapons\flamethrower\flamethrower")
(global object_definition w_needler "weapons\needler\needler")
(global object_definition w_mp_needler "weapons\needler\mp_needler")
(global object_definition w_pistol "weapons\pistol\pistol")
(global object_definition w_plasma_cannon "weapons\plasma_cannon\plasma_cannon")
(global object_definition w_plasma_pistol "weapons\plasma pistol\plasma pistol")
(global object_definition w_plasma_rifle "weapons\plasma rifle\plasma rifle")
(global object_definition w_rocket_launcher "weapons\rocket launcher\rocket launcher")
(global object_definition w_shotgun "weapons\shotgun\shotgun")
(global object_definition w_sniper_rifle "weapons\sniper rifle\sniper rifle")
(global object_definition w_flag "weapons\flag\flag")
(global object_definition w_oddball "weapons\ball\ball")


(global short plyrnum 0)


(script continuous increase_plyrnum
    (set plyrnum (+ plyrnum 1.000000))
)


(script continuous reset_plyrnum
    (if
        (= (> plyrnum 15) 1)
        (set plyrnum 0)
    )
)


(script continuous backpack_assaultrifle
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_assault_rifle )
            (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_assault_rifle ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack assault_rifle )
    )
)

(script continuous backpack_flamethrower
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_flamethrower )
            (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_flamethrower ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack flamethrower )
    )
)

(script continuous backpack_needler
    (if
        (or
            (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_needler )
                (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_needler ) ) 1 )
            
			(and (unit_has_weapon (unit (list_get (players) plyrnum)) w_mp_needler )
                (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_mp_needler ) ) 1 ) )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack needler )
    )
)

(script continuous backpack_pistol
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_pistol )
            (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_pistol ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack pistol )
    )
)

(script continuous backpack_plasmacannon
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_plasma_cannon )
            (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_plasma_cannon ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack plasma_cannon )
    )
)

(script continuous backpack_plasmapistol
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_plasma_pistol )
            (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_plasma_pistol ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack plasma_pistol )
    )
)

(script continuous backpack_plasmarifle
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_plasma_rifle )
            (not (unit_has_weapon_readied(unit (list_get (players) plyrnum)) w_plasma_rifle ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack plasma_rifle )
    )
)

(script continuous backpack_rocketlauncher
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_rocket_launcher )
            (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_rocket_launcher ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack rocket_launcher )
    )
)

(script continuous backpack_shotgun
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_shotgun )
            (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_shotgun ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack shotgun )
    )
)

(script continuous backpack_sniperrifle
    (if
        (and (unit_has_weapon (unit (list_get (players) plyrnum)) w_sniper_rifle )
            (not (unit_has_weapon_readied (unit (list_get (players) plyrnum)) w_sniper_rifle ) ) 1 )
        (object_set_permutation (unit (list_get (players) plyrnum)) backpack sniper_rifle )
    )
)