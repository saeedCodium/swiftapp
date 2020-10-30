//
//  TabCViewController.swift
//  swiftapp
//
//  Created by Saeed Rahmatolahi on 28/10/2563 BE.
//

import UIKit

class TabCViewController: UIViewController, galleryProtocol {
    
    @IBOutlet weak var listView: GalleryView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTab()
    }
    
    func setTab() {
        self.listView.page = .c
        self.listView.galleryDelegate = self
        self.listView.cv.reloadingData()
    }
    
    var isClicked = false
    func selectedImage() {
        self.showAlertOneButton(.weAreTheChampions,.weAre, .ok) { [self] in
            self.isClicked = !self.isClicked
            self.listView.rotateAnimation(self.isClicked)
        }
    }

}
