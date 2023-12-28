(global object_definition w_assault_rifle "weapons\assault rifle\assault rifle")
(global object_definition w_flamethrower weapons\flamethrower\flamethrower)
(global object_definition w_needler weapons\needler\needler)
(global object_definition w_mp_needler weapons\needler\mp_needler)
(global object_definition w_pistol weapons\pistol\pistol)
(global object_definition w_plasma_cannon weapons\plasma_cannon\plasma_cannon)
(global object_definition w_plasma_pistol "weapons\plasma pistol\plasma pistol")
(global object_definition w_plasma_rifle "weapons\plasma rifle\plasma rifle")
(global object_definition w_rocket_launcher "weapons\rocket launcher\rocket launcher")
(global object_definition w_shotgun weapons\shotgun\shotgun)
(global object_definition w_sniper_rifle "weapons\sniper rifle\sniper rifle")
(global object_definition w_flag weapons\flag\flag)
(global object_definition w_oddball weapons\ball\ball)
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
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_assault_rifle
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_assault_rifle
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            assault_rifle
        )
    )
)


(script continuous backpack_flamethrower
    (if
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_flamethrower
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_flamethrower
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            flamethrower
        )
    )
)


(script continuous backpack_needler
    (if
        (or
            (and
                (unit_has_weapon
                    (unit (list_get (players) plyrnum))
                    w_needler
                )
                (not
                    (unit_has_weapon_readied
                        (unit (list_get (players) plyrnum))
                        w_needler
                    )
                )
                1
            )
            (and
                (unit_has_weapon
                    (unit (list_get (players) plyrnum))
                    w_mp_needler
                )
                (not
                    (unit_has_weapon_readied
                        (unit (list_get (players) plyrnum))
                        w_mp_needler
                    )
                )
                1
            )
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            needler
        )
    )
)


(script continuous backpack_pistol
    (if
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_pistol
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_pistol
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            pistol
        )
    )
)


(script continuous backpack_plasmacannon
    (if
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_plasma_cannon
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_plasma_cannon
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            plasma_cannon
        )
    )
)


(script continuous backpack_plasmapistol
    (if
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_plasma_pistol
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_plasma_pistol
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            plasma_pistol
        )
    )
)


(script continuous backpack_plasmarifle
    (if
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_plasma_rifle
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_plasma_rifle
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            plasma_rifle
        )
    )
)


(script continuous backpack_rocketlauncher
    (if
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_rocket_launcher
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_rocket_launcher
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            rocket_launcher
        )
    )
)


(script continuous backpack_shotgun
    (if
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_shotgun
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_shotgun
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            shotgun
        )
    )
)


(script continuous backpack_sniperrifle
    (if
        (and
            (unit_has_weapon
                (unit (list_get (players) plyrnum))
                w_sniper_rifle
            )
            (not
                (unit_has_weapon_readied
                    (unit (list_get (players) plyrnum))
                    w_sniper_rifle
                )
            )
            1
        )
        (object_set_permutation
            (unit (list_get (players) plyrnum))
            backpack
            sniper_rifle
        )
    )
)


(script startup hax_doors
    (object_set_scale s1 1.000000 1)
    (object_set_scale s2 1.000000 1)
    (object_set_scale s3 1.000000 1)
    (object_set_scale s4 1.000000 1)
    (object_set_scale s5 1.000000 1)
    (object_set_scale s6 1.000000 1)
    (object_set_scale s7 1.500000 1)
    (object_set_scale s8 1.500000 1)
    (object_set_scale rescale_1 0.500000 1)
    (object_set_scale rescale_2 0.500000 1)
    (object_set_scale rescale_3 0.500000 1)
    (object_set_scale rescale_4 0.500000 1)
    (object_set_scale rescale_5 0.500000 1)
    (object_set_scale rescale_6 0.500000 1)
    (object_set_scale rescale_7 0.500000 1)
    (object_set_scale rescale_8 0.500000 1)
    (object_set_collideable s1 0)
    (object_set_collideable s2 0)
    (object_set_collideable s3 0)
    (object_set_collideable s4 0)
    (object_set_collideable s5 0)
    (object_set_collideable s6 0)
    (object_set_collideable s7 0)
    (object_set_collideable s8 0)
)


(script continuous minefield
    (if
        (=
            (volume_test_objects minefield_01 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_01-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_01-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_01-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_02 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_02-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_02-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_02-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_03 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_03-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_03-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_03-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_04 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_04-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_04-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_04-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_05 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_05-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_05-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_05-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_06 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_06-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_06-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_06-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_07 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_07-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_07-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_07-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_08 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_08-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_08-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_08-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_09 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_09-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_09-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_09-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_10 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_10-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_10-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_10-3)
            (sleep 20)
        )
    )
    (if
        (=
            (volume_test_objects minefield_11 (players))
            1
        )
        (begin
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_11-1)
            (sleep 15)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_11-2)
            (sleep 30)
            (effect_new tlmp\levels\pipeline\effects\plasma_bomb minefield_11-3)
            (sleep 20)
        )
    )
)

