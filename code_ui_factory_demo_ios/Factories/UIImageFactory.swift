import UIKit

class UIImageViewFactory {
	private let imageView: UIImageView
	
	init(image: UIImage?) {
		imageView = UIImageView(image: image)
		imageView.contentMode = .scaleAspectFill
		imageView.translatesAutoresizingMaskIntoConstraints = false
	}

	func builder() -> UIImageView {
		return imageView
	}
}

