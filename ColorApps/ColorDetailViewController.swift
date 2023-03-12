//
//  ColorDetailViewController.swift
//  ColorApps
//
//  Created by Ardhan Maulana on 12/03/23.
//

import UIKit

class ColorDetailViewController: UIViewController {
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =   color ?? .white
        // Do any additional setup after loading the view.
    }

}
