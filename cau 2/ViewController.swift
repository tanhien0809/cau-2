//
//  ViewController.swift
//  cau 2
//
//  Created by Cntt10 on 7/5/17.
//  Copyright © 2017 Cntt10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txt1: UITextField!
    
    @IBOutlet weak var txt2: UITextField!
    
    @IBOutlet weak var img1: UIImageView!
    
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBAction func btn(_ sender: Any) {
        
        let url: URL = URL(string: txt1.text!)!
        
        (URLSession(configuration: .default)).dataTask(with: url, completionHandler: { (data, respone, error) in
            if let imageData = data {
                DispatchQueue.main.async { () -> Void in
                    self.img1.image = UIImage(data: imageData)
                }
            } 
        }).resume()
        
        let url2: URL = URL(string: txt2.text!)!
        
        (URLSession(configuration: .default)).dataTask(with: url2, completionHandler: { (data, respone, error) in
            if let imageData = data {
                DispatchQueue.main.async { () -> Void in
                    self.img2.image = UIImage(data: imageData)
                }
            }}).resume()

    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

