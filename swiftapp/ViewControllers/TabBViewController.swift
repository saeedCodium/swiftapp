//
//  TabBViewController.swift
//  swiftapp
//
//  Created by Saeed Rahmatolahi on 27/10/2563 BE.
//

import UIKit

class TabBViewController: UIViewController, galleryProtocol {
    
    @IBOutlet weak var listView: GalleryView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTab()
    }
    
    func setTab() {
        self.listView.page = .b
        self.listView.galleryDelegate = self
        self.listView.cv.reloadingData()
    }
    
    var isClicked = false
    func selectedImage() {
        self.showAlertOneButton(.letsEnjoy, .letsEnjoyMessage, .ok, {
            self.isClicked = !self.isClicked
            self.listView.flipAnimation(self.isClicked,10)
        })
    }

}
