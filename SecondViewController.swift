//
//  SecondViewController.swift
//  Test
//
//  Created by Vijay Yadav on 27/02/18.
//  Copyright © 2018 Vijay Yadav. All rights reserved.
//

import UIKit
import Alamofire

class SecondViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func printMethod() {
        
        print("this is child view controller")
        
        debugPrint("Hello from Alamo!")
        Alamofire.request("https://apple.com").downloadProgress { (progress) in
            debugPrint(progress)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
