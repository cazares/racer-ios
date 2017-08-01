//
//  WebViewController.swift
//  racer-js
//
//  Created by Miguel Cazares on 7/31/17.
//  Copyright © 2017 Cazares. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    let racerJSUrl = "http://cazares.github.io/racer-js/index.html"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let webView = UIWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.scrollView.isScrollEnabled = false
        view.addSubview(webView)
        
        webView.lhs_fillWidthOfSuperview()
        webView.lhs_fillHeightOfSuperview()
        
        let url = URL(string: racerJSUrl)
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
}

