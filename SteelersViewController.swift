//
//  SteelersViewController.swift
//  Profio Final
//
//  Created by Blake Profio on 5/4/20.
//  Copyright © 2020 Blake Profio. All rights reserved.
//

import UIKit
import WebKit

class SteelersViewController: UIViewController {
    
    var winsTemplate : String = "You believe they will win <winsNumber> games!"
    @IBOutlet weak var winsNumber: UITextField!
    
    @IBOutlet weak var outputText: UITextField!
    @IBAction func pressButton(_ sender: Any) {
         outputText.text = winsTemplate.replacingOccurrences(of:"<winsNumber>",with: winsNumber.text!)
    }
    
    @IBOutlet weak var steelersWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.steelers.com/")
        let myRequest = URLRequest(url: myURL!)
        steelersWebView.load(myRequest)

        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func openSite(_ sender: Any) {
        
        if let url = URL(string: "https://www.steelers.com/") {
        UIApplication.shared.open(url, options: [:])
    }
    
        

            
        }

    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
        
    


