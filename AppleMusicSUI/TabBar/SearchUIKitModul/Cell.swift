//
//  Cell.swift
//  AppleMusicSUI
//
//  Created by 1234 on 13.12.2023.
//

import UIKit

class Cell: UICollectionViewCell {
    
    static let identifier = "Cell"
    
    // MARK: - Outlets
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 18
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init (coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarhy() {
        addSubview(image)
    }
    
    private func setupLayout() {
        image.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        self.image.image = nil
    }
    
    // MARK: - Configuration
    
    func configuration(model: Model) {
        self.image.image = UIImage(named: model.image)
    }
}
