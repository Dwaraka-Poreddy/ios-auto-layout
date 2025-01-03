//
//  ViewController.swift
//  SpotifyPlayer
//
//  Created by Dwarakanatha Reddy Poreddy on 28/12/24.
//

import UIKit

class CHCRImage: UIViewController {
    let buttonHeight: CGFloat = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
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
        
        view.addSubview(albumImage)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)
        
        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)
        
        view.addSubview(spotifyButton)
        
        albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        
        trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 8).isActive = true
        trackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        trackLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8).isActive = true
        albumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8).isActive = true
        playButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8).isActive = true
        
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8).isActive = true
        
        progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 8).isActive = true
        
        previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: 8).isActive = true
        previewEndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spotifyButton.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 32).isActive = true
        spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        // spotifyButton.heightAnchor we need to set to get our nice rounded corners - height is fixed
        // spotifyButton.widthAnchor we don't need to set because the intrinsic content size and insets are enough - width is dynamic
    }

}
