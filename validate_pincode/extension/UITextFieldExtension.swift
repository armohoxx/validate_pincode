//
//  UITextFieldExtension.swift
//  validate_pincode
//
//  Created by Phattarapon Jungtakarn on 19/7/2566 BE.
//

import Foundation
import UIKit

extension UITextField {
    
    func setupRightImage(imageName: String) {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        imageView.image = UIImage(named: imageName)
        let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        imageContainerView.addSubview(imageView)
        rightView = imageContainerView
        rightViewMode = .always
        self.tintColor = .lightGray
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        NotificationCenter.default.post(name: .ClearTextButtonHelper, object: nil)
    }
    
}
