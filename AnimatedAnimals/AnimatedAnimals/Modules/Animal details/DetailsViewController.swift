//
//  DetailsViewController.swift
//  AnimatedAnimals
//
//  Created by Rost on 27.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit
import WebKit


class DetailsViewController: UIViewController {
    @IBOutlet weak var animalImage: AsyncImageView!
    @IBOutlet weak var animalTitle: UILabel!
    @IBOutlet weak var totalLikes: UILabel!
    @IBOutlet weak var aboutWebView: WKWebView!
    
    /// ---> View life cycle <--- ///
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}
