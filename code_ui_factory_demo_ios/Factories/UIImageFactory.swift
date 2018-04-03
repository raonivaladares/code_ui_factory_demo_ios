import UIKit

final class UIImageViewFactory {
	private let imageView: UIImageView
	
	// MARK: - Inits
	init(image: UIImage?) {
		imageView = UIImageView(image: image)
		imageView.contentMode = .center
		imageView.backgroundColor = .blue
		imageView.translatesAutoresizingMaskIntoConstraints = false
	}

	// MARK: - Public methods
	func build() -> UIImageView {
		return imageView
	}
}

