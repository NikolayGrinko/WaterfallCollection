//
//  ImageCollectionViewCell.swift
//  WaterfallCollection
//
//  Created by Николай Гринько on 23.01.2024.
//

import Foundation
import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
	
	static let identifier = "ImageCollectionViewCell"
	
	private let imageView: UIImageView = {
		let image = UIImageView()
		image.contentMode = .scaleAspectFill
		return image
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		contentView.addSubview(imageView)
		contentView.clipsToBounds = true
		
	}
	
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		imageView.frame = contentView.bounds
		
	}
	override func prepareForReuse() {
		super.prepareForReuse()
		imageView.image = nil
	}
	
	func configure(image: UIImage?) {
		imageView.image = image
	}
	
}
