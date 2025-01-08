//
//  Challenge.swift
//  SpotifyConfigurationScreen
//
//  Created by Dwarakanatha Reddy Poreddy on 28/12/24.
//
import UIKit

class Challenge: UIViewController {
    
    let margin: CGFloat = 16
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    /*
     
     Challenge: See if you can embed all these controls in a StackView like this.
     
     ┌────────StackView─────────┐
     │                          │
     │        offlineRow        │
     │                          │
     │      offlineSublabel     │
     │                          │   axis = vertical
     │       crossfadeView      │   distribution = fill
     │                          │   alignment = fill
     │        gaplessRow        │   spacing = 20
     │                          │
     │       hideSongsRow       │
     │                          │
     │     normalizationRow     │
     │                          │
     └──────────────────────────┘
     
     */
    
    func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.spacing = 20
        
        let offlineRow = RowView(title: "Offline", isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let crossfadeView = CrossfadeView()
        
        let gaplessRow = RowView(title: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(title: "Hide Unplayable Songs", isOn: true)
        let normalizationRow = RowView(title: "Enable Audio Normalization", isOn: true)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(offlineRow)
        stackView.addArrangedSubview(offlineSublabel)
        stackView.addArrangedSubview(crossfadeView)
        
        stackView.addArrangedSubview(gaplessRow)
        stackView.addArrangedSubview(hideSongsRow)
        stackView.addArrangedSubview(normalizationRow)
        
        view.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: margin, leading: margin, bottom: margin, trailing: margin)
    }
}
