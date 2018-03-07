import UIKit

class SecondViewController: UIViewController {
	private let topicLabel: UILabel = {
		let label = UILabel()
		label.text = "Topic"
		label.textAlignment = .center //textAlignment count = 1
		label.font = label.font.withSize(36)
		label.translatesAutoresizingMaskIntoConstraints = false //translatesAutoresizingMaskIntoConstraints count = 1
		
		return label
	}()
	
	private let subTopicLabel: UILabel = {
		let label = UILabel()
		label.text = "subTopic"
		label.textAlignment = .center //textAlignment count = 2
		label.font = label.font.withSize(20)
		label.translatesAutoresizingMaskIntoConstraints = false //translatesAutoresizingMaskIntoConstraints count = 2
		
		return label
	}()
	
	private let profileImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.backgroundColor = .red
		imageView.translatesAutoresizingMaskIntoConstraints = false //translatesAutoresizingMaskIntoConstraints count = 2
		
		return imageView
	}()
	
	private let miniDescriptionLabel: UILabel = {
		let label = UILabel()
		label.text = "Lore lore lore ip ip ip Lore lore lore ip ip ip Lore lore lore ip ip ip Lore lore lore ip ip ip Lore lore lore ip ip ip "
		label.textAlignment = .center //textAlignment count = 3
		label.font = label.font.withSize(18)
		label.numberOfLines = 3
		label.translatesAutoresizingMaskIntoConstraints = false //translatesAutoresizingMaskIntoConstraints count = 3
		
		return label
	}()
	
	private let nextButton: UIButton = {
		let button = UIButton()
		button.setTitle("next", for: .normal)
		button.backgroundColor = .blue
		button.addTarget(self, action: #selector(nextButtonActionHandler(_:)), for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false //translatesAutoresizingMaskIntoConstraints count = 4
		
		return button
	}()
	
	// MARK: - View lify-cicle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		buildUI()
	}
	
	@objc private func nextButtonActionHandler(_ sender: UIButton) {
		
	}
	
	// MARK: - Private methods
	private func buildUI() {
		view.backgroundColor = .white
		
		view.addSubview(topicLabel)
		view.addSubview(subTopicLabel)
		view.addSubview(profileImageView)
		view.addSubview(miniDescriptionLabel)
		view.addSubview(nextButton)
		
		NSLayoutConstraint.activate([
			topicLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
			topicLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
			topicLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
			
			subTopicLabel.topAnchor.constraint(equalTo: topicLabel.bottomAnchor, constant: 8),
			subTopicLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
			subTopicLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
			
			profileImageView.topAnchor.constraint(equalTo: subTopicLabel.bottomAnchor, constant: 16),
			profileImageView.widthAnchor.constraint(equalToConstant: 80),
			profileImageView.heightAnchor.constraint(equalToConstant: 80),
			profileImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
			
			miniDescriptionLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8),
			miniDescriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
			miniDescriptionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
			
			nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
			nextButton.widthAnchor.constraint(equalToConstant: 100),
			nextButton.heightAnchor.constraint(equalToConstant: 50),
			nextButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
			])
	}
}
