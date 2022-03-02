//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 横田瑛美 on 2022/03/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var go: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    var nowIndex:Int = 0
    
    var timer: Timer!
    
    var imageArray:[UIImage] = [
        UIImage(named: "00")!,
        UIImage(named: "01")!,
        UIImage(named: "02")!,
        UIImage(named: "07")!,
        UIImage(named: "19")!,
        UIImage(named: "28")!
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
        if (timer == nil) {
            
                   timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            

               } else {
                   
                   timer.invalidate()
                   
                   timer = nil
                   
               }
    }
    
    @objc func changeImage() {
        
            nowIndex += 1
        
            if (nowIndex == imageArray.count) {
                
                nowIndex = 0
            }
        
            imageView.image = imageArray[nowIndex]
        }
}

