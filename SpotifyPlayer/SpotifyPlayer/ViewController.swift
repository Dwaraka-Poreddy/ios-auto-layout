//
//  ViewController.swift
//  SpotifyPlayer
//
//  Created by Dwarakanatha Reddy Poreddy on 28/12/24.
//

import UIKit

class CHCRImage: UIViewController {
    let buttonHeight: CGFloat = 40
    var stackView: UIStackView
    var centerYConstraint = NSLayoutConstraint()
    var topSpacer: UIView
    var bottomSpacer: UIView
    
    init() {
        stackView = makeStackView(withOrientation: .vertical)
        topSpacer = makeSpacerView(height: 100)
        topSpacer.backgroundColor = .red
        bottomSpacer = makeSpacerView(height: 100)
        bottomSpacer.backgroundColor = .blue
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerForOrientationChanges()
        setupViews()
    }
    
    func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(CHCRImage.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    func setupViews() {
        navigationItem.title = "CHCR - Image"
        
        
        let albumImage = makeImageView(named: "rush")
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()
        
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        let bottomView = makeStackView(withOrientation: .vertical)
        let playView = UIView()
        bottomView.alignment = .center
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(albumImage)
        stackView.addArrangedSubview(bottomView)
        
        view.addSubview(stackView)
        
        bottomView.addArrangedSubview(topSpacer)
        bottomView.addArrangedSubview(trackLabel)
        bottomView.addArrangedSubview(albumLabel)
        
        bottomView.addArrangedSubview(playView)
        
        
        bottomView.addArrangedSubview(spotifyButton)
        bottomView.addArrangedSubview(bottomSpacer)
        
        playView.addSubview(playButton)
        playView.addSubview(previewStartLabel)
        playView.addSubview(progressView)
        playView.addSubview(previewEndLabel)
        
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: stackView.bounds.width).isActive = true
        bottomSpacer.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // Define bottomView's height based on its children
        bottomView.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 16).isActive = true
        bottomView.widthAnchor.constraint(equalToConstant: stackView.bounds.width).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 16).isActive = true
        
        playView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor).isActive = true
        playView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor).isActive = true
        playView.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        playButton.topAnchor.constraint(equalTo: playView.topAnchor, constant: 8).isActive = true
        playButton.leadingAnchor.constraint(equalTo: playView.leadingAnchor, constant: 8).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8).isActive = true
        
        progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 8).isActive = true
        
        previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: 8).isActive = true
        previewEndLabel.trailingAnchor.constraint(equalTo: playView.trailingAnchor, constant: -8).isActive = true
        
        spotifyButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor).isActive = true
        spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        albumLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        trackLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        centerYConstraint = stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        // spotifyButton.heightAnchor we need to set to get our nice rounded corners - height is fixed
        // spotifyButton.widthAnchor we don't need to set because the intrinsic content size and insets are enough - width is dynamic
    }
    
    @objc func rotated() {
        if UIDevice.current.orientation.isLandscape {
            stackView.axis = .horizontal
            centerYConstraint.isActive = true
        } else {
            stackView.axis = .vertical
            centerYConstraint.isActive = true
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
}
