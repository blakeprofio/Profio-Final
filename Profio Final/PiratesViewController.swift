//
//  PiratesViewController.swift
//  Profio Final
//
//  Created by Blake Profio on 5/4/20.
//  Copyright © 2020 Blake Profio. All rights reserved.
//

import UIKit
import WebKit

class PiratesViewController: UIViewController {
    
    var winsTemplate : String = "You believe they will wins <winsNumber> games!"
    @IBOutlet weak var winsNumber: UITextField!
    @IBOutlet weak var outputText: UITextField!
    @IBAction func pressButton(_ sender: Any) {
        outputText.text = winsTemplate.replacingOccurrences(of:"<winsNumber>",with: winsNumber.text!)
    }
    
    
    @IBOutlet weak var piratesWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string:"https://www.mlb.com/pirates")
        let myRequest = URLRequest(url: myURL!)
        piratesWebView.load(myRequest)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openSite(_ sender: Any) {
        if let url = URL(string: "https://www.mlb.com/pirates") {
                   UIApplication.shared.open(url, options: [:])
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
}
