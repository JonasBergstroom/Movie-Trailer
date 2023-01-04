//
//  Extensions.swift
//  Movie-Trailer
//
//  Created by Jonas Bergström on 2023-01-04.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}

