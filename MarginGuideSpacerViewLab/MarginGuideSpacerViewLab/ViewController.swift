//
//  ViewController.swift
//  MarginGuideSpacerViewLab
//
//  Created by Dwarakanatha Reddy Poreddy on 28/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        
        // create controls
        let leadingGuide = UILayoutGuide()
        let okButton = makeButton(title: "OK", color: UIColor.darkBlue)
        let middleGuide = UILayoutGuide()
        let cancelButton = makeButton(title: "Cancel", color: UIColor.darkGreen)
        let trailingGuide = UILayoutGuide()
        
        view.addLayoutGuide(leadingGuide)
        view.addSubview(okButton)
        view.addLayoutGuide(middleGuide)
        view.addSubview(cancelButton)
        view.addLayoutGuide(trailingGuide)
        
        let margin = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            // leading guide
            margin.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor),
            leadingGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor),
            
            // middle guide
            okButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor),
            middleGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor),
            
            // trailing guide
            cancelButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
            trailingGuide.trailingAnchor.constraint(equalTo: margin.trailingAnchor),
            
            // buttons equal width
            okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor),
            
            //spacer equal widths
            leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),
            
            //vertical position
            leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            // giving layout guides default height
            leadingGuide.heightAnchor.constraint(equalToConstant: 1),
            middleGuide.heightAnchor.constraint(equalToConstant: 1),
            trailingGuide.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    func makeButton(title: String, color: UIColor) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets.init(top: 8, left: 16, bottom: 8, right: 16)
        button.backgroundColor = color
        
        return button
    }
}

extension UIColor {
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
}
