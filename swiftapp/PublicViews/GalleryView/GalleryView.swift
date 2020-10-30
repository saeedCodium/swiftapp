//
//  GalleryView.swift
//  swiftapp
//
//  Created by Saeed Rahmatolahi on 27/10/2563 BE.
//

import UIKit

class GalleryView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var cv: UICollectionView!
    var page : tabs = .a
    weak var galleryDelegate : galleryProtocol?
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        self.initCV()
    }
    
    func initCV() {
        self.cv.registerCell("GalleryCell")
        self.cv.dataSource = self
        self.cv.delegate = self
    }
    
    func commonInit() {
        let bundle = Bundle.init(for: GalleryView.self)
        if let viewsToAdd = bundle.loadNibNamed("GalleryView", owner: self, options: nil), let contentView = viewsToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        }
    }
}

extension GalleryView : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCell", for: indexPath) as? GalleryCell else { return UICollectionViewCell()}
        
        DispatchQueue.main.async {
            cell.galleryImage.image = UIImage(named: "\(indexPath.item + 1)\(self.page)")
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return GetTabsSettings().getCellSize(self.page)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.galleryDelegate?.selectedImage()
    }
    
}
