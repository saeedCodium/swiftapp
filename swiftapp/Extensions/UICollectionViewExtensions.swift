//
//  UICollectionViewExtensions.swift
//  swiftapp
//
//  Created by Saeed Rahmatolahi on 27/10/2563 BE.
//

import Foundation
import UIKit

extension UICollectionView {
    func registerCell(_ name : String) {
        self.register(UINib(nibName: name, bundle: nil), forCellWithReuseIdentifier: name)
    }
    
    func reloadingData() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
