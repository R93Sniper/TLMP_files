(script startup minichief
    (if (not (game_is_authoritative)) (begin
	(object_create tiny_cheif)
    	(object_set_scale "tiny_cheif" 0.25 1)
)))


(script startup secret_thanos
	(sleep_until (volume_test_objects thanos_trigger (players)) 90)
		(object_create secret_thanos)
		(object_set_permutation secret_thanos default thanos0)
		(object_set_scale secret_thanos 55 240)
		(sound_looping_start "sound\music\title1\title1" none 1)
		(sleep 750)
		(sound_looping_stop "sound\music\title1\title1")
)