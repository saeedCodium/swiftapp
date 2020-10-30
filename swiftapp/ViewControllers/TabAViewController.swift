//
//  TabAViewController.swift
//  swiftapp
//
//  Created by Saeed Rahmatolahi on 27/10/2563 BE.
//

import UIKit

class TabAViewController: UIViewController, galleryProtocol {
    
    @IBOutlet weak var listView: GalleryView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTab()
//        self.view.createParticles()
    }
    
    func setTab() {
        self.listView.page = .a
        self.listView.galleryDelegate = self
        self.listView.cv.reloadingData()
    }
    
    func selectedImage() {
        self.showAlertOneButton(.personalPhotoTitle, .personalPhotoMessage, .ok, {
            // Handle Ok Button
        })
    }

}
