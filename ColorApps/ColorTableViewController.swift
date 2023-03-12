//
//  ColorTableViewController.swift
//  ColorApps
//
//  Created by Ardhan Maulana on 12/03/23.
//

import UIKit


class ColorTableViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
}
extension ColorTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toColorDetailViewController", sender: nil)
    }
}
