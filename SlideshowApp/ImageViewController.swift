//
//  ImageViewController.swift
//  SlideshowApp
//
//  Created by 横田瑛美 on 2022/03/03.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var expandImageView: UIImageView!
    
    var x:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        expandImageView.image = x
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
