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
        UIImage(named: "IMG_7900")!,
        UIImage(named: "IMG_7901")!,
        UIImage(named: "IMG_7907")!,
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
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
    
    @IBAction func nextImage(_ sender: Any) {
        nowIndex += 1
    
        if (nowIndex == imageArray.count) {
            
            nowIndex = 0
        }
    
        imageView.image = imageArray[nowIndex]
    }
    
    @IBAction func backImage(_ sender: Any) {
        nowIndex -= 1
    
        if (nowIndex == imageArray.count) {
            
            nowIndex = 0
        }
    
        imageView.image = imageArray[nowIndex]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            let imageViewController:ImageViewController = segue.destination as! ImageViewController
        
            imageViewController.x = imageView
    }
}
