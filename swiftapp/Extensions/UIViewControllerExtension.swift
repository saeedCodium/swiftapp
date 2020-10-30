//
//  UIViewControllerExtension.swift
//  swiftapp
//
//  Created by Saeed Rahmatolahi on 27/10/2563 BE.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlertOneButton(_ title : String ,_ message : String ,_ okTitle : String,_ completion : @escaping()->Void) {
        // create the alert
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: okTitle, style: UIAlertAction.Style.default, handler: { action in
            completion()
        }))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}
