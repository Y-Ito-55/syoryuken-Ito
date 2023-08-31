//
//  ViewController.swift
//  syoryuken
//
//  Created by Yumi Ito on 2023/08/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var animateButton: UIButton!
    
    var images: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...20 {
            if let image = UIImage(named: "attack\(i)"){
                images.append(image)
            }
        }
        imageView.image = images.first
    }
    
    @IBAction func animateImages(_ sender: UIButton) {
        imageView.animationImages = images
        imageView.animationDuration = 2.5
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
        
    }
}

