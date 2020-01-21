//
//  PhotoSelectoHeader.swift
//  Instagram Firebase
//
//  Created by Juan Navarro on 12/21/19.
//  Copyright © 2019 Juan Navarro. All rights reserved.
//

import UIKit

class PhotoselectorHeader: UICollectionViewCell {
    
    let photoImageView: UIImageView = {
            let image = UIImageView()
            image.contentMode = .scaleAspectFill
            image.clipsToBounds = true
            return image
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            addSubview(photoImageView)
            photoImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
            
            
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }

