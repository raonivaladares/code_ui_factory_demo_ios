import UIKit

final class UIButtonFactory {
	private let button: UIButton
	
	enum Style {
		case normal
		case especial
	}
	
	// MARK: - Inits
	init(title: String, style: Style = .normal) {
		button = UIButton()
		button.setTitle(title, for: .normal)
		button.translatesAutoresizingMaskIntoConstraints = false
		
		switch style {
		case .normal: normalStyle()
		case .especial: especialStyle()
		}
	}
	
	// MARK: - Public methods
	func addTarget(_ target: Any?, action: Selector, for event: UIControlEvents) -> Self {
		button.addTarget(target, action: action, for: event)
		
		return self
	}
	
	func build() -> UIButton {
		return button
	}
	
	// MARK: - Private methods
	private func especialStyle() {
		button.cornerRadius = 10
		button.backgroundColor = .green
		button.setTitleColor(.red, for: .normal)
		button.setTitleColor(.white, for: .highlighted)
	}
	
	private func normalStyle() {
		button.backgroundColor = .blue
		button.setTitleColor(.white, for: .normal)
		button.setTitleColor(.yellow, for: .highlighted)
	}
}
