//
//  PhotoCollectionViewCell.swift
//  PhotoJournal
//
//  Created by Erick Wesley Espinoza on 4/25/20.
//  Copyright © 2020 HazeStudio. All rights reserved.
//

import Foundation
import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    let photoView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "testImage")
        return imageView
    }()
    let photoCaptionLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Picture title Here"
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    private func setupGestureRecognizer() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(cellTapped))
        photoView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func cellTapped(){
        print("CEll TApped")
    }
    
    func setupViews(){
        self.addSubview(photoView)
        self.backgroundColor = UIColor.init(hex: 0x34b1eb)
        self.addSubview(photoCaptionLabel)
        
        NSLayoutConstraint.activate([
            photoView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            photoView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            photoView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            photoView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            
            
            photoCaptionLabel.topAnchor.constraint(equalTo: self.photoView.bottomAnchor, constant: 8),
            photoCaptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            photoCaptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            photoCaptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
