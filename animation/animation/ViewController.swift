//
//  ViewController.swift
//  animation
//
//  Created by Illia S. on 22.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toggleCart: UIView!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        self.toggleCart.frame.size.height = 300
        self.toggleCart.frame.size.width = 300
//        self.toggleCart.center = CGPoint(x: toggleCart.frame.size.width  / 2,
//                                         y: toggleCart.frame.size.height / 2)
        self.toggleCart.backgroundColor = UIColor.green
        self.toggleCart.layer.cornerRadius = 20
        self.toggleCart.rotate()
//        self.toggleCart.backgroundColor = UIColor.gray
//        self.toggleCart.rotate()
        
    }
    
}

extension UIView{
    func rotate() {
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.y")
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 4
        rotation.isCumulative = true
        rotation.repeatCount = 1
        self.layer.add(rotation, forKey: "rotationAnimation")
    }
}
