(global boolean secret_done false)
(script static void update_secret
	(if (and (game_is_authoritative) (not secret_done)) (begin
		(if (and
		  (>= (device_get_position secret_0) 1)
		  (>= (device_get_position secret_1) 1)
		  (>= (device_get_position secret_2) 1)
		  (>= (device_get_position secret_3) 1)
		) (begin
			(object_create secret_warthog)
			(set secret_done true)
		))
	))
)

(script startup secret_thanos
	(object_create secret_thanos)
	(object_set_permutation secret_thanos default thanos0)
	(object_set_scale secret_thanos 0.25 1)
)