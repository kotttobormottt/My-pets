//
//  ViewController.swift
//  Module12
//
//  Created by Andrey Zharov on 15.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Views
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.Image.star
        imageView.tintColor = Constants.Colors.redPrimary
        imageView.tintColor = traitCollection.userInterfaceStyle == .dark ?  .orange : .purple
        return imageView
    }()
    
    private lazy var label1: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.heading
        label.textColor = Constants.Colors.redPrimary
        label.font = Constants.Fonts.systemHading
        return label
    }()
    
    private lazy var label2: UILabel = {
        let label = UILabel()
        let string = "The breed - Jack Russell Terrier"
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: string)
        if let commaIndex = string.firstIndex(of: "-") {
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemRed,
                range: NSRange(string.startIndex ..< commaIndex, in: string)
            )
            
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemBlue,
                range: NSRange(commaIndex ..< string.endIndex, in: string)
            )
        }
        
        label.attributedText = attributedString
        return label
    }()
    
    private lazy var label3: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.text1
        label.textColor = Constants.Colors.pinkSecondary
        label.font = Constants.Fonts.ui14SemiBold
        return label
    }()
    
    private lazy var label4: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.text2
        label.textColor = Constants.Colors.pinkSecondary
        label.font = Constants.Fonts.ui14SemiBold
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        return stackView
    }()
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateImageColor()
    }

    
    // MARK: - Private
    
    private func setupViews() {
        view.addSubview(stackView)
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints =  false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stackView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    private func updateImageColor() {
        if traitCollection.userInterfaceStyle == .dark {
            imageView.tintColor = .red
        } else {
            imageView.tintColor = .blue
        }
    }
}

