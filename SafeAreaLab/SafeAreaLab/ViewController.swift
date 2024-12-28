//
//  ViewController.swift
//  SafeAreaLab
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
        let redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = .red
        let topLabel = makeLabel(withText: "Top")
        let bottomLabel = makeLabel(withText: "Bottom")
        let leadingLabel = makeLabel(withText: "Leading")
        let trailingLabel = makeLabel(withText: "Trailing")
        
        view.addSubview(redView)
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            redView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            redView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            redView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            leadingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            trailingLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 32)
        
        return label
    }
    
}

