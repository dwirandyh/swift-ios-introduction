//
//  ViewController.swift
//  tinkering-table-view
//
//  Created by Dwi Randy Herdinanto on 31/01/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit



class ViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var dataSource: CustomDataSource!
    
    var fruitList = [
        Fruit(name: "Banana", stock: 10, thumbnail: "banana.jpg"),
        Fruit(name: "Avocado", stock: 5, thumbnail: "avocado.jpg"),
        Fruit(name: "Orange", stock: 2, thumbnail: "orange.jpg")
    ]
    
    var selectedFruit : Fruit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource.register(self, fruitList: self.fruitList, tableView: tableView)
        self.tableView.dataSource = dataSource
        self.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "itemCell")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DetailViewController.IDENTIFIER {
            let vc : DetailViewController = segue.destination as! DetailViewController
            vc.selectedFruit = self.selectedFruit
        }
    }
    
    public func openDetailViewController(selectedItem : Fruit){
        self.selectedFruit = selectedItem
        performSegue(withIdentifier: DetailViewController.IDENTIFIER, sender: self)
    }
}



