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
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(movieHeaderImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        movieHeaderImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
