//
//  PanthersViewController.swift
//  Profio Final
//
//  Created by Blake Profio on 5/4/20.
//  Copyright © 2020 Blake Profio. All rights reserved.
//

import UIKit
import WebKit

class PanthersViewController: UIViewController {
    
    var winsTemplate : String = "You believe they will wins <winsNumber> games!"
    @IBOutlet weak var winsNumber: UITextField!
    @IBOutlet weak var outputText: UITextField!
    
    @IBAction func pressButton(_ sender: Any) {
        outputText.text = winsTemplate.replacingOccurrences(of:"<winsNumber>",with: winsNumber.text!)
    }
    
    @IBOutlet weak var panthersWebView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string:"https://pittsburghpanthers.com/")
        let myRequest = URLRequest(url: myURL!)
        panthersWebView.load(myRequest)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openSite(_ sender: Any) {
        if let url = URL(string: "https://pittsburghpanthers.com/") {
            UIApplication.shared.open(url, options: [:])
        
    }
    

}
}


