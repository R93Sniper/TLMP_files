; Extracted with Reclaimer

(script continuous fallout-player-0
    (if (volume_test_object "fallout" (list_get (players) 0))
        (begin
            (unit_kill (unit (list_get (players) 0)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-1
    (if (volume_test_object "fallout" (list_get (players) 1))
        (begin
            (unit_kill (unit (list_get (players) 1)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-10
    (if (volume_test_object "fallout" (list_get (players) 10))
        (begin
            (unit_kill (unit (list_get (players) 10)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-11
    (if (volume_test_object "fallout" (list_get (players) 11))
        (begin
            (unit_kill (unit (list_get (players) 11)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-12
    (if (volume_test_object "fallout" (list_get (players) 12))
        (begin
            (unit_kill (unit (list_get (players) 12)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-13
    (if (volume_test_object "fallout" (list_get (players) 13))
        (begin
            (unit_kill (unit (list_get (players) 13)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-14
    (if (volume_test_object "fallout" (list_get (players) 14))
        (begin
            (unit_kill (unit (list_get (players) 14)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-15
    (if (volume_test_object "fallout" (list_get (players) 15))
        (begin
            (unit_kill (unit (list_get (players) 15)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-2
    (if (volume_test_object "fallout" (list_get (players) 2))
        (begin
            (unit_kill (unit (list_get (players) 2)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-3
    (if (volume_test_object "fallout" (list_get (players) 3))
        (begin
            (unit_kill (unit (list_get (players) 3)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-4
    (if (volume_test_object "fallout" (list_get (players) 4))
        (begin
            (unit_kill (unit (list_get (players) 4)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-5
    (if (volume_test_object "fallout" (list_get (players) 5))
        (begin
            (unit_kill (unit (list_get (players) 5)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-6
    (if (volume_test_object "fallout" (list_get (players) 6))
        (begin
            (unit_kill (unit (list_get (players) 6)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-7
    (if (volume_test_object "fallout" (list_get (players) 7))
        (begin
            (unit_kill (unit (list_get (players) 7)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-8
    (if (volume_test_object "fallout" (list_get (players) 8))
        (begin
            (unit_kill (unit (list_get (players) 8)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous fallout-player-9
    (if (volume_test_object "fallout" (list_get (players) 9))
        (begin
            (unit_kill (unit (list_get (players) 9)))
            (object_teleport "killa" "killz_ma")
            (sleep 10)
        )
    )
)


(script continuous killz_ma
    (if (= (unit_get_health "killz_ma") 0)
        (begin
            (object_create_anew "killa")
            (breakable_surfaces_reset)
            (object_create_anew "killz_ma")
            (sv_say "floors reset")
            (sleep 10)
        )
    )
)


(script continuous musix_button
    (if (= (device_get_position "musix_control") 1)
        (begin
            (object_teleport "killa_musix" "killz_ma_musix")
            (sleep 500)
        )
    )
)


(script continuous musix_play
    (if (= (unit_get_health "killz_ma_musix") 0)
        (object_create "musix")
    )
)


(script startup spawn
    (begin
        (object_create "killa")
        (object_create "killa_musix")
        (object_create "killz_ma")
        (object_create "killz_ma_musix")
    )
)


