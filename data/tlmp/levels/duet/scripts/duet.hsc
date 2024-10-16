(script continuous "banshee revert"
    (if
        (= (volume_test_objects fallout b1) 1)
        (begin
            (object_destroy b1)
            (object_create_anew b1)
        )
    )
    (if
        (= (volume_test_objects fallout b2) 1)
        (begin
            (object_destroy b2)
            (object_create_anew b2)
        )
    )
    (if
        (= (volume_test_objects fallout b3) 1)
        (begin
            (object_destroy b3)
            (object_create_anew b3)
        )
    )
    (if
        (= (volume_test_objects fallout b4) 1)
        (begin
            (object_destroy b4)
            (object_create_anew b4)
        )
    )
    (if
        (= (volume_test_objects fallout b5) 1)
        (begin
            (object_destroy b5)
            (object_create_anew b5)
        )
    )
    (if
        (= (volume_test_objects fallout b6) 1)
        (begin
            (object_destroy b6)
            (object_create_anew b6)
        )
    )
    (if
        (= (volume_test_objects fallout b7) 1)
        (begin
            (object_destroy b7)
            (object_create_anew b7)
        )
    )
    (if
        (= (volume_test_objects fallout b8) 1)
        (begin
            (object_destroy b8)
            (object_create_anew b8)
        )
    )
    (if
        (= (volume_test_objects fallout b9) 1)
        (begin
            (object_destroy b9)
            (object_create_anew b9)
        )
    )
    (if
        (= (volume_test_objects fallout b10) 1)
        (begin
            (object_destroy b10)
            (object_create_anew b10)
        )
    )
    (if
        (= (volume_test_objects fallout b11) 1)
        (begin
            (object_destroy b11)
            (object_create_anew b11)
        )
    )
    (if
        (= (volume_test_objects fallout b12) 1)
        (begin
            (object_destroy b12)
            (object_create_anew b12)
        )
    )
    (if
        (= (volume_test_objects fallout b13) 1)
        (begin
            (object_destroy b13)
            (object_create_anew b13)
        )
    )
    (if
        (= (volume_test_objects fallout b14) 1)
        (begin
            (object_destroy b14)
            (object_create_anew b14)
        )
    )
    (if
        (= (volume_test_objects fallout b15) 1)
        (begin
            (object_destroy b15)
            (object_create_anew b15)
        )
    )
    (if
        (= (volume_test_objects fallout b16) 1)
        (begin
            (object_destroy b16)
            (object_create_anew b16)
        )
    )
)


(script continuous deathplane
    (if
        (=
            (volume_test_object
                fallout
                (list_get (players) 0)
            )
            1
        )
        (begin
            (sv_say "har har har stupeed host are got keeled by darth plane har har har!")
            (unit_kill
                (unit (list_get (players) 0))
            )
        )
    )
    (if
        (=
            (volume_test_object
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
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
                fallout
                (list_get (players) 15)
            )
            1
        )
        (unit_kill
            (unit (list_get (players) 15))
        )
    )
)

