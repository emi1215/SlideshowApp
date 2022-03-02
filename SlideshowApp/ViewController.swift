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
        UIImage(named: "IMG_7900.jpeg")!,
        UIImage(named: "IMG_7901.jpeg")!,
        UIImage(named: "IMG_7007.jpeg")!,
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
        if (timer == nil) {
            
                   timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
                   startButton.setTitle("停止", for: .normal)

               } else {
                   
                   timer.invalidate()
                   
                   timer = nil
                   
                   startButton.setTitle("再生", for: .normal)
                   
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

