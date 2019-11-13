//
//  ColorDetailViewController.swift
//  Rainbow(iOSPT4)
//
//  Created by David Wright on 11/12/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }
}
