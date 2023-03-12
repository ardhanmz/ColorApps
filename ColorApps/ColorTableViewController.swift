//
//  ColorTableViewController.swift
//  ColorApps
//
//  Created by Ardhan Maulana on 12/03/23.
//

import UIKit


class ColorTableViewController: UIViewController {
    
    var color: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColor()
    }
    
    func createRandomColor() {
        for _ in 1..<50 {
            color.append(UIColor (red: randomColorFloat(), green: randomColorFloat(), blue: randomColorFloat(), alpha: 1))
        }
    }
    func randomColorFloat() -> CGFloat {
        return CGFloat.random(in: 0...1.0)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorDetailViewController
        destinationVC.color = sender as? UIColor
    }
    
}
extension ColorTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return color.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell") else {
            return UITableViewCell()
        }
        cell.backgroundColor = color[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedColor = color[indexPath.row]
        performSegue(withIdentifier: "toColorDetailViewController", sender: selectedColor)
    }
}
