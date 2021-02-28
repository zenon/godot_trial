# Just playing

Warning 1: This is a playground. If it breaks your computer, I refrain from being responsible. (And in that case I probably broke mine before, thus am short of money to help you.)

Warning 2: It is boring. I'm an absolute beginner, and this thing doesn't do anything interesting. I hope I'll be able to change that though.

This is a [Godot](https://godotengine.org) project. To edit the project, download Godot, and open the project in Godot. To run the project, just put the Godot engine into the same directory as the project.godot file, and start the engine.

## Status

- A floor, with a spot light to mark the center.
- A "player": a cylinder with a red nose (also a cylinder)
- A block that drops from the sky
- Steer the player with arrow keys.
- If you push the block off the floor, it'll vanish into the abyss. A new block will fall down under the spot light. A counter will be incremented.
- Tab key brings the camera from somewhere to first person, shift-tab brings it to somewhere again.
- Player.gd now contains some code that opens UDP port 9999, and waits for packages containing "forward", "backward", "left", or "right", so the player can be steered over the network.