;*
================================================================================

    extracted.hsc, file 1 of 1

    generated by Invader 0.54.2.r4101

================================================================================
*;

(script continuous "blue main hanger"
    (if
        (= (volume_test_object blue-hanger-exit blue-jet-1) 1)
        (object_teleport blue-jet-1 blue-hanger-exit)
        (if
            (= (volume_test_object blue-hanger-exit blue-jet-2) 1)
            (object_teleport blue-jet-2 blue-hanger-exit)
            (if
                (= (volume_test_object blue-hanger-exit blue-jet-3) 1)
                (object_teleport blue-jet-3 blue-hanger-exit)
                (if
                    (= (volume_test_object blue-hanger-exit blue-jet-4) 1)
                    (object_teleport blue-jet-4 blue-hanger-exit)
                    (if
                        (= (volume_test_object blue-hanger-exit blue-pelican-1) 1)
                        (object_teleport blue-pelican-1 blue-hanger-exit)
                        (if
                            (= (volume_test_object blue-hanger-exit blue-pelican-2) 1)
                            (object_teleport blue-pelican-2 blue-hanger-exit)
                            (if
                                (= (volume_test_object blue-hanger-exit blue-longsword-1) 1)
                                (object_teleport blue-longsword-1 blue-hanger-exit)
                            )
                        )
                    )
                )
            )
        )
    )
)


(script continuous "blue jets main"
    (if
        (= (volume_test_object blue-jet-1-exit blue-jet-1) 1)
        (object_teleport blue-jet-1 blue-jet-1-exit)
        (if
            (= (volume_test_object blue-jet-2-exit blue-jet-2) 1)
            (object_teleport blue-jet-2 blue-jet-2-exit)
            (if
                (= (volume_test_object blue-jet-3-exit blue-jet-3) 1)
                (object_teleport blue-jet-3 blue-jet-3-exit)
                (if
                    (= (volume_test_object blue-jet-4-exit blue-jet-4) 1)
                    (object_teleport blue-jet-4 blue-jet-4-exit)
                )
            )
        )
    )
)


(script continuous "blue teleport 1 main"
    (if
        (= (volume_test_object blue-teleport-1 blue-ghog-1) 1)
        (object_teleport blue-ghog-1 blue-teleport-exit)
        (if
            (= (volume_test_object blue-teleport-1 blue-ghog-2) 1)
            (object_teleport blue-ghog-2 blue-teleport-exit)
            (if
                (= (volume_test_object blue-teleport-1 blue-ghog-3) 1)
                (object_teleport blue-ghog-3 blue-teleport-exit)
                (if
                    (= (volume_test_object blue-teleport-1 blue-ghog-4) 1)
                    (object_teleport blue-ghog-4 blue-teleport-exit)
                    (if
                        (= (volume_test_object blue-teleport-1 blue-mhog-1) 1)
                        (object_teleport blue-mhog-1 blue-teleport-exit)
                        (if
                            (= (volume_test_object blue-teleport-1 blue-mhog-2) 1)
                            (object_teleport blue-mhog-2 blue-teleport-exit)
                            (if
                                (= (volume_test_object blue-teleport-1 blue-mhog-3) 1)
                                (object_teleport blue-mhog-3 blue-teleport-exit)
                                (if
                                    (= (volume_test_object blue-teleport-1 blue-mhog-4) 1)
                                    (object_teleport blue-mhog-4 blue-teleport-exit)
                                )
                            )
                        )
                    )
                )
            )
        )
    )
)


(script continuous "blue teleport 2 main"
    (if
        (= (volume_test_object blue-teleport-2 blue-ghog-1) 1)
        (object_teleport blue-ghog-1 blue-teleport-exit)
        (if
            (= (volume_test_object blue-teleport-2 blue-ghog-2) 1)
            (object_teleport blue-ghog-2 blue-teleport-exit)
            (if
                (= (volume_test_object blue-teleport-2 blue-ghog-3) 1)
                (object_teleport blue-ghog-3 blue-teleport-exit)
                (if
                    (= (volume_test_object blue-teleport-2 blue-ghog-4) 1)
                    (object_teleport blue-ghog-4 blue-teleport-exit)
                    (if
                        (= (volume_test_object blue-teleport-2 blue-mhog-1) 1)
                        (object_teleport blue-mhog-1 blue-teleport-exit)
                        (if
                            (= (volume_test_object blue-teleport-2 blue-mhog-2) 1)
                            (object_teleport blue-mhog-2 blue-teleport-exit)
                            (if
                                (= (volume_test_object blue-teleport-2 blue-mhog-3) 1)
                                (object_teleport blue-mhog-3 blue-teleport-exit)
                                (if
                                    (= (volume_test_object blue-teleport-2 blue-mhog-4) 1)
                                    (object_teleport blue-mhog-4 blue-teleport-exit)
                                )
                            )
                        )
                    )
                )
            )
        )
    )
)


(script startup "no fallout" (set rider_ejection 0))


(script continuous pwn_nubs
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 0)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 0))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 1)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 1))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 2)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 2))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 3)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 3))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 4)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 4))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 5)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 5))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 6)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 6))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 7)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 7))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 8)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 8))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 9)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 9))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 10)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 10))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 11)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 11))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 12)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 12))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 13)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 13))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 14)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 14))
        )
    )
    (if
        (=
            (volume_test_object
                deathplane
                (list_get (players) 15)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 15))
        )
    )
)


(script continuous "do the rick astley 1"
    (custom_animation mr1 "characters\master rick\master rick" "do the rick astley" 0)
    (sleep 56)
)


(script continuous "do the rick astley 2"
    (custom_animation mr2 "characters\master rick\master rick" "do the rick astley" 0)
    (sleep 56)
)


(script continuous "do the rick astley 3"
    (custom_animation mr3 "characters\master rick\master rick" "do the rick astley" 0)
    (sleep 56)
)


(script continuous "do the rick astley 4"
    (custom_animation mr4 "characters\master rick\master rick" "do the rick astley" 0)
    (sleep 56)
)


(script continuous "rick is invincible!"
    (unit_set_maximum_vitality mr1 1000000.000000 100000.000000)
    (unit_set_maximum_vitality mr2 1000000.000000 100000.000000)
    (unit_set_maximum_vitality mr3 1000000.000000 100000.000000)
    (unit_set_maximum_vitality mr4 1000000.000000 100000.000000)
)


(script continuous "if rick died1"
    (if
        (= (unit_get_health mr1) 0.000000)
        (object_create_anew mr1)
    )
)


(script continuous "if rick died2"
    (if
        (= (unit_get_health mr2) 0.000000)
        (object_create_anew mr2)
    )
)


(script continuous "if rick died3"
    (if
        (= (unit_get_health mr3) 0.000000)
        (object_create_anew mr3)
    )
)


(script continuous "if rick died4"
    (if
        (= (unit_get_health mr4) 0.000000)
        (object_create_anew mr4)
    )
)


(script continuous red-pelican-1-d
    (sleep 5)
    (unit_set_desired_flashlight_state red-pelican-1 0)
)


(script continuous red-pelican-2-d
    (sleep 5)
    (unit_set_desired_flashlight_state red-pelican-2 0)
)


(script continuous blue-pelican-1-d
    (sleep 5)
    (unit_set_desired_flashlight_state blue-pelican-1 0)
)


(script continuous blue-pelican-2-d
    (sleep 5)
    (unit_set_desired_flashlight_state blue-pelican-2 0)
)


(script continuous "red base main hanger exit"
    (if
        (= (volume_test_object red-hanger-exit red-longsword-1) 1)
        (object_teleport red-longsword-1 red-hanger-exit)
        (if
            (= (volume_test_object red-hanger-exit red-pelican-1) 1)
            (object_teleport red-pelican-1 red-hanger-exit)
            (if
                (= (volume_test_object red-hanger-exit red-pelican-2) 1)
                (object_teleport red-pelican-2 red-hanger-exit)
                (if
                    (= (volume_test_object red-hanger-exit red-jet-1) 1)
                    (object_teleport red-jet-1 red-hanger-exit)
                    (if
                        (= (volume_test_object red-hanger-exit red-jet-2) 1)
                        (object_teleport red-jet-2 red-hanger-exit)
                        (if
                            (= (volume_test_object red-hanger-exit red-jet-3) 1)
                            (object_teleport red-jet-3 red-hanger-exit)
                            (if
                                (= (volume_test_object red-hanger-exit red-jet-4) 1)
                                (object_teleport red-jet-4 red-hanger-exit)
                            )
                        )
                    )
                )
            )
        )
    )
)


(script continuous "red jet teleporter"
    (if
        (= (volume_test_object red-jet-1-exit red-jet-1) 1)
        (object_teleport red-jet-1 red-jet-1-exit)
        (if
            (= (volume_test_object red-jet-2-exit red-jet-2) 1)
            (object_teleport red-jet-2 red-jet-2-exit)
            (if
                (= (volume_test_object red-jet-3-exit red-jet-3) 1)
                (object_teleport red-jet-3 red-jet-4-exit)
                (if
                    (= (volume_test_object red-jet-4-exit red-jet-4) 1)
                    (object_teleport red-jet-4 red-jet-4-exit)
                )
            )
        )
    )
)


(script continuous "red teleport 1 main"
    (if
        (= (volume_test_object red-teleport-1 red-ghog-1) 1)
        (object_teleport red-ghog-1 red-teleport-exit)
        (if
            (= (volume_test_object red-teleport-1 red-ghog-2) 1)
            (object_teleport red-ghog-2 red-teleport-exit)
            (if
                (= (volume_test_object red-teleport-1 red-ghog-3) 1)
                (object_teleport red-ghog-3 red-teleport-exit)
                (if
                    (= (volume_test_object red-teleport-1 red-ghog-4) 1)
                    (object_teleport red-ghog-4 red-teleport-exit)
                    (if
                        (= (volume_test_object red-teleport-1 red-mhog-1) 1)
                        (object_teleport red-mhog-1 red-teleport-exit)
                        (if
                            (= (volume_test_object red-teleport-1 red-mhog-2) 1)
                            (object_teleport red-mhog-2 red-teleport-exit)
                            (if
                                (= (volume_test_object red-teleport-1 red-mhog-3) 1)
                                (object_teleport red-mhog-3 red-teleport-exit)
                                (if
                                    (= (volume_test_object red-teleport-1 red-mhog-4) 1)
                                    (object_teleport red-mhog-4 red-teleport-exit)
                                )
                            )
                        )
                    )
                )
            )
        )
    )
)


(script continuous "red teleport 2 main"
    (if
        (= (volume_test_object red-teleport-2 red-ghog-1) 1)
        (object_teleport red-ghog-1 red-teleport-exit)
        (if
            (= (volume_test_object red-teleport-2 red-ghog-2) 1)
            (object_teleport red-ghog-2 red-teleport-exit)
            (if
                (= (volume_test_object red-teleport-2 red-ghog-3) 1)
                (object_teleport red-ghog-3 red-teleport-exit)
                (if
                    (= (volume_test_object red-teleport-2 red-ghog-4) 1)
                    (object_teleport red-ghog-4 red-teleport-exit)
                    (if
                        (= (volume_test_object red-teleport-2 red-mhog-1) 1)
                        (object_teleport red-mhog-1 red-teleport-exit)
                        (if
                            (= (volume_test_object red-teleport-2 red-mhog-2) 1)
                            (object_teleport red-mhog-2 red-teleport-exit)
                            (if
                                (= (volume_test_object red-teleport-2 red-mhog-3) 1)
                                (object_teleport red-mhog-3 red-teleport-exit)
                                (if
                                    (= (volume_test_object red-teleport-2 red-mhog-4) 1)
                                    (object_teleport red-mhog-4 red-teleport-exit)
                                )
                            )
                        )
                    )
                )
            )
        )
    )
)

