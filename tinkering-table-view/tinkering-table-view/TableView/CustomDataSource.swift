//
//  CustomDataSource.swift
//  tinkering-table-view
//
//  Created by Dwi Randy Herdinanto on 31/01/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit


class CustomDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {

    var caller : ViewController?
    var fruitList : [Fruit] = []
    
    
    func register(_ caller : ViewController, fruitList: [Fruit], tableView : UITableView){
        self.caller = caller
        self.fruitList = fruitList
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomTableView", bundle: nil), forCellReuseIdentifier: "itemCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.fruitList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! CustomTableViewCell
        cell.itemNameLabel.text = self.fruitList[indexPath.row].name
        cell.itemCountLabel.text = "Count: \(self.fruitList[indexPath.row].stock)"
        cell.thumbnailImage.image = UIImage(named: fruitList[indexPath.row].thumbnail)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        caller?.openDetailViewController(selectedItem: fruitList[indexPath.row])
    }
    
    
}
