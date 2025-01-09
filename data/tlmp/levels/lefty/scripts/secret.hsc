(script startup secret
	(if (game_is_authoritative) (object_create secret_ghost))
)