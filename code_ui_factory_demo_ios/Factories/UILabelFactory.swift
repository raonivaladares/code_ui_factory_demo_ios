import UIKit

class UILabelFactory {
	private let label: UILabel
	private let defultFontSize: CGFloat = 20
	
	init(text: String?) {
		label = UILabel()
		label.textAlignment = .center
		label.text = text
		label.font = label.font.withSize(defultFontSize)
		label.translatesAutoresizingMaskIntoConstraints = false
	}
	
	func fontSize(of size: CGFloat) -> Self {
		label.font = label.font.withSize(size)
		
		return self
	}
	
	func textColor(with color: UIColor) -> Self {
		label.textColor = color
		
		return self
	}
	
	func numberOf(lines: Int) -> Self {
		label.numberOfLines = lines
		
		return self
	}
	
	func builder() -> UILabel {
		return label
	}
}

