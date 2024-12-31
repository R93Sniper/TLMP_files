(global short plyrnum 0)

(script continuous client_sync_sdoor
    (if (= (unit_get_health "newb") 0)
        (object_destroy "sdoor")
    )
)

(script startup create_newb
    (begin
        (object_create "newb")
        (object_create "bonecrusher")
    )
)

(script startup h3s
    (object_set_collideable "sdoor" false)
)

(script continuous host_sync_sdoor
    (if (= (device_get_position "sdoor_control") 1)
        (begin
            (object_teleport "bonecrusher" "rape_newb")
            (sleep 200)
        )
    )
)

(script continuous increase_plyrnum
    (set plyrnum (+ plyrnum 1))
)

(script startup minichief
    (object_set_scale "tiny_cheif" 0.5 1)
)

(script continuous reset_plyrnum
    (if (= (> plyrnum 15) true)
        (set plyrnum 0)
    )
)