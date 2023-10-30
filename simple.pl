happy(vincent).
listen2music(butch).
playsAirGuitar(vincent):-listen2music(vincent),happy(vincent).
playsAirGuitar(butch):-happy(butch).
playsAirGuitar(butch):-happy(vincent).
