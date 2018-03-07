import UIKit

class FirstViewController: UIViewController {
	private let topicLabel: UILabel = {
		let label = UILabel()
		label.text = "Topic"
		label.textAlignment = .center
		label.translatesAutoresizingMaskIntoConstraints = false
		
		return label
	}()
	
	// MARK: - View lify-cicle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		buildUI()
	}
	
	// MARK: - Private methods
	private func buildUI() {
		view.backgroundColor = .white
		
		view.addSubview(topicLabel)
		
		NSLayoutConstraint.activate([
			topicLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			topicLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			topicLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			])
	}
}

