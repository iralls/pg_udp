CREATE OR REPLACE FUNCTION udp_send(h TEXT, p INTEGER, m TEXT) RETURNS TEXT AS $$
	import socket

	try:
		sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
		sock.sendto(m, (h, p))
	except Exception as e:
		raise plpy.error("{0}".format(e))
	finally:
		sock.close()
	return m
$$ LANGUAGE plpythonu;
