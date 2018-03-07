import UIKit

class UIButtonFactory {
	private let button: UIButton
	
	init(title: String) {
		button = UIButton()
		button.setTitle(title, for: .normal)
		button.backgroundColor = .blue
		
		button.translatesAutoresizingMaskIntoConstraints = false
	}
	
	func addTarget(_ target: Any?, action: Selector, for event: UIControlEvents) -> Self {
		button.addTarget(target, action: action, for: event)
		
		return self
	}
	
	func builder() -> UIButton {
		return button
	}
}
