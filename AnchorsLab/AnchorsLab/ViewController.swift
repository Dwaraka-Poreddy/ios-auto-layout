//
//  ViewController.swift
//  AnchorsLab
//
//  Created by Dwarakanatha Reddy Poreddy on 28/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
    }

    func setupViews() {
        let upperLeftSmallLabel = makeLabel(withText: "LeftSmall", size: 12)
        let upperLeftLargeLabel = makeLabel(withText: "LeftLarge", size: 32)
        let upperRightLabel = makeLabel(withText: "upperRight", size: 12)
        let bottomLeftLabel = makeSecondaryLabel(withText: "bottomLeft")
        let bottomRightLabel = makeButton(withText: "Pay Bill")
        let redView = makeView()
        
        view.addSubview(upperLeftSmallLabel)
        view.addSubview(upperLeftLargeLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(bottomLeftLabel)
        view.addSubview(bottomRightLabel)
        view.addSubview(redView)
        
        upperLeftSmallLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperLeftSmallLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        view.trailingAnchor.constraint(equalTo: upperRightLabel.trailingAnchor, constant: 8).isActive = true
        upperLeftLargeLabel.centerYAnchor.constraint(equalTo: upperLeftSmallLabel.centerYAnchor).isActive = true
        upperLeftLargeLabel.leadingAnchor.constraint(equalTo: upperLeftSmallLabel.trailingAnchor, constant: 8).isActive = true

        bottomLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        bottomLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        bottomRightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        view.trailingAnchor.constraint(equalTo: bottomRightLabel.trailingAnchor, constant: 8).isActive = true
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        // optin 1: Size exp[licitly
//        redView.heightAnchor.constraint(equalToConstant: 500).isActive = true
//        redView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 8).isActive = true
        
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
    }
    
    func makeLabel(withText text: String, size: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: size)
        
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        
        return button
    }
    
    func makeView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }

}

