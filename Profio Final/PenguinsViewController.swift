//
//  PenguinsViewController.swift
//  Profio Final
//
//  Created by Blake Profio on 5/4/20.
//  Copyright © 2020 Blake Profio. All rights reserved.
//

import UIKit
import WebKit

class PenguinsViewController: UIViewController {

    @IBOutlet weak var penguinsWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.nhl.com/penguins")
        let myRequest = URLRequest(url: myURL!)
        penguinsWebView.load(myRequest)

        // Do any additional setup after loading the view.
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
