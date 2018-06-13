//
//  ViewController.swift
//  ReaderViewDemo
//
//  Created by Abhijit Rana on 14/06/18.
//  Copyright © 2018 Abhijit Rana. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    @IBAction func openNormal(_ sender: Any) {
        let url = URL.init(string: "https://timesofindia.indiatimes.com/sports/football/fifa-world-cup/spain-name-fernando-hierro-as-coach-for-world-cup/articleshow/64574265.cms")
        let svc = SFSafariViewController(url: url!)
        present(svc, animated: true, completion: nil)
    
    }
    
    @IBAction func openInReaderView(_ sender: Any) {
        let url = URL.init(string: "https://timesofindia.indiatimes.com/sports/football/fifa-world-cup/spain-name-fernando-hierro-as-coach-for-world-cup/articleshow/64574265.cms")
        let config = SFSafariViewController.Configuration()
        config.entersReaderIfAvailable = true

        
        let svc = SFSafariViewController(url: url!, configuration:config )
        present(svc, animated: true, completion: nil)
    
    }
}

