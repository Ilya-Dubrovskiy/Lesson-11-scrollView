import UIKit


class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image123"))
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.text = "Awesome product name"
        label.numberOfLines = 0
        return label
    }()
    
    private let rewievLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.text = "Review"
        label.numberOfLines = 0
        return label
    }()
    
    private let descriptionLable: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.numberOfLines = 0
        label.text = "This is detailed description of the product. It has many features and benefits. The scroll view allow us to show all of this information. You can scroll to see more"
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Add to card", for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.layer.cornerRadius = 14
        return button
        
    }()
    
    private let dopLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.numberOfLines = 0
        label.text = "This is detailed description of the product. It has many features and benefits. The scroll view allow us to show all of this information. You can scroll to see more. This is detailed description of the product. It has many features and benefits. The scroll view allow us to show all of this information. You can scroll to see more. This is detailed description of the product. It has many features and benefits. The scroll view allow us to show all of this information. You can scroll to see more. This is detailed description of the product. It has many features and benefits. The scroll view allow us to show all of this information. You can scroll to see moreThis is detailed description of the product. It has many features and benefits. The scroll view allow us to show all of this information. You can scroll to see more. This is detailed description of the product. It has many features and benefits. The scroll view allow us to show all of this information. You can scroll to see more"
        return label
    }()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(descriptionLable)
        stackView.addArrangedSubview(button)
        stackView.addArrangedSubview(rewievLabel)
        stackView.addArrangedSubview(dopLabel)
        stackView.setCustomSpacing(50, after: button)
        //отступы
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 20, bottom: 40, trailing: 20)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            //ширина
            stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
            
            imageView.heightAnchor.constraint(equalToConstant: 320),
            button.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
}

