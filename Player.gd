extends KinematicBody

class_name Player # why needed?

var udpPort = 9999
var udpThread

var forward = 0
var rotate_left = 0

export var hspeed : float = 20.0
export var rspeed : float = 2.0

func _ready():
	print("Creating the UDP thread.")
	udpThread = Thread.new()
	udpThread.start(self, "receiver_thread", udpPort)
#	pass

func _physics_process(delta : float) -> void:
	var dz : float = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down") + forward
	forward = 0
	var da : float = Input.get_action_strength("ui_left") - Input.get_action_strength("ui_right") + rotate_left
	rotate_left = 0
	rotation.y += da*rspeed * delta
	var direction : Vector3 = Vector3(0,0,1).rotated(Vector3(0,1,0), rotation.y)
	var motion : Vector3 = direction * dz * hspeed * delta
	var _move_result = move_and_collide(motion)
	#print("move resulted in "+str(move_result))

func receiver_thread(port):
	var done = false
	var socket = PacketPeerUDP.new()
	if(socket.listen(port, "127.0.0.1") != OK):
		print("An error occurred listening on port "+str(port))
		done = true;
	else:
		print("Listening on port " + str(port) + " on localhost")
	while(done != true):
		if(socket.get_available_packet_count() > 0):
			var data = socket.get_packet().get_string_from_ascii()
			if(data == "end"):
				done = true
			else:
				print("Data received: " + data)
				if(data == "forward"):
					forward += 1
				elif(data == "backward"):
					forward -= 1
				elif(data == "left"):
					rotate_left += 5
				elif(data == "right"):
					rotate_left -= 5 
	socket.close()
	print("Exiting UDP Receiver")

# not tested yet
func send():
	var socket = PacketPeerUDP.new()
	socket.set_dest_address("127.0.0.1", udpPort)
	socket.put_packet("Moin.".to_ascii())
	print("UDP sending done.")
