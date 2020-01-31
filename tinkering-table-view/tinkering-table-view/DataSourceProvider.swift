//
//  DataSourceProvider.swift
//  tinkering-table-view
//
//  Created by Dwi Randy Herdinanto on 31/01/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit

public class DataSourceProvider : NSObject, UITableViewDataSource, UITableViewDelegate {
    
    let tableView : UITableView!
    
    init(tableView: UITableView){
        self.tableView = tableView
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.textLabel!.text = "Hello World"
        return cell
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
     
     
}
