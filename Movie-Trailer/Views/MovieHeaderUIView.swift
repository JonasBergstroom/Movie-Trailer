//
//  MovieHeaderUIView.swift
//  Movie-Trailer
//
//  Created by Jonas Bergström on 2022-11-08.
//

import UIKit

class MovieHeaderUIView: UIView {
    
    private let movieHeaderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "freeGuyImage")
        return imageView
    }()
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(movieHeaderImageView)
        addGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        movieHeaderImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
