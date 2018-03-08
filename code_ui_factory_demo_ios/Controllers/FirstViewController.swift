import UIKit

class FirstViewController: UIViewController {
	private let topicLabel = UILabelFactory(text: "Topic 1")
		.fontSize(of: 36)
		.builder()
	
	private let subTopicLabel = UILabelFactory(text: "subTopic")
		.builder()
	
	private let profileImageView = UIImageViewFactory(image: UIImage(named: "UserProfilePlaceHolder"))
	.builder()
	
	private let miniDescriptionLabel = UILabelFactory(text: "Lore lore lore ip ip ip Lore lore lore ip ip ip Lore lore lore ip ip ip Lore lore lore ip ip ip Lore lore lore ip ip ip")
		.numberOf(lines: 3)
		.textColor(with: .blue)
		.builder()
	
	private let nextButton = UIButtonFactory(title: "Next")
		.addTarget(self, action: #selector(nextButtonActionHandler(_:)), for: .touchUpInside)
		.builder()
	
	// MARK: - View lify-cicle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		buildUI()
	}
	
	@objc private func nextButtonActionHandler(_ sender: UIButton) {
		navigationController?.pushViewController(SecondViewController(), animated: true)
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
			
			profileImageView.topAnchor.constraint(equalTo: subTopicLabel.bottomAnchor, constant: 32),
			profileImageView.widthAnchor.constraint(equalToConstant: 160),
			profileImageView.heightAnchor.constraint(equalToConstant: 160),
			profileImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
			
			miniDescriptionLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 32),
			miniDescriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
			miniDescriptionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
			
			nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
			nextButton.widthAnchor.constraint(equalToConstant: 100),
			nextButton.heightAnchor.constraint(equalToConstant: 50),
			nextButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
			])
	}
}

