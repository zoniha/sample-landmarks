import SwiftUI

struct CircleImage: View {
	let rRate = 124 / 255.0
	let gRate = 199 / 255.0
	let bRate = 232 / 255.0

	var image: Image

	var body: some View {
		image
			.clipShape(Circle())
			.overlay(Circle().stroke(Color(red: rRate, green: gRate, blue: bRate, opacity: 1.0), lineWidth: 4))
			.shadow(radius: 7)
	}
}

struct CircleImage_Previews: PreviewProvider {
	static var previews: some View {
		CircleImage(image: Image("turtlerock"))
	}
}
