//
//  DetailsViewController+NavigationDelegate.swift
//  AnimatedAnimals
//
//  Created by Rost on 30.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import WebKit


extension DetailsViewController: WKNavigationDelegate {
    
    /// ---> Function from navigation delegate protocol <--- ///
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
