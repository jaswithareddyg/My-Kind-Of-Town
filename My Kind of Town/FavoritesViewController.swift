//
//  FavoritesViewController.swift
//  My Kind of Town
//
//  Created by Jaswitha Reddy G on 2/8/23.
//

import Foundation
import UIKit

class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    weak var delegate: PlacesFavoritesDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.sharedInstance.myFavorites.count
    }
    
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoritePlace", for: indexPath)
        cell.textLabel?.text = DataManager.sharedInstance.myFavorites[indexPath.row]
        return cell
    }
    
    @objc(numberOfSectionsInTableView:) func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    private func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    @IBAction func tapDismissButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc(tableView:didSelectRowAtIndexPath:) func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.favoritePlace(name: DataManager.sharedInstance.myFavorites[indexPath.row])
        self.dismiss(animated: true, completion: nil)
    }
    
    // swipe to delete
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath)
            -> UISwipeActionsConfiguration? {
            let deleteAction = UIContextualAction(style: .destructive, title: nil) { (_, _, completionHandler) in
                
                print("Deleted Item: \(indexPath)")
                DataManager.sharedInstance.removeFavoriteIndex(index: indexPath.row)
                self.tableView.deleteRows(at: [indexPath], with: .fade)
                completionHandler(true)
            }
            deleteAction.image = UIImage(systemName: "trash")
                deleteAction.backgroundColor = UIColor.red
            let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
            return configuration
    }
}
