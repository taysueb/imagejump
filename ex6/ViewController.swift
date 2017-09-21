//
//  ViewController.swift
//  ex6
//
//  Created by Chaicharn Vijarnsatit on 9/21/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageList:[UIImage] = []
        for i in 1...20{
            let fn = "frame-"+String(format: "%d",i)+".png"
            let vImage = UIImage(named: fn)
            imageList.append(vImage!) // load pic to animation image
            
        }
        imageView.animationImages = imageList
        imageView.animationDuration = 1
    }

    @IBAction func StartStopMethod(_ sender: Any) {
        if imageView.isAnimating{
            imageView.stopAnimating()
            Button.setTitle("sit!",for: UIControlState.normal)
        }else{
            imageView.startAnimating()
            Button.setTitle("jump!",for: UIControlState.normal)
        }
    }
   
    @IBAction func speedMethod(_ sender: Any) {
        imageView.animationDuration = TimeInterval(2-Slider.value)
        imageView.startAnimating()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

