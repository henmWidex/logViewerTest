//
//  TableViewController.swift
//  LogViewer
//
//  Created by Henrik Mygind on 02/11/2016.
//  Copyright © 2016 Widex A/S. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var items: [UInt32] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.items = Model.sharedInstance.exampleList
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let e = items[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SmileyCell") as? TableViewCell else {
            
            let c = UITableViewCell()
            c.textLabel?.text = "#\(e)"
            
            return c
        }
        
        var img: UIImage?
        switch e {
        case 0:
            img = #imageLiteral(resourceName: "happy")
        case 1:
            img = #imageLiteral(resourceName: "meh")
        case 2:
            img = #imageLiteral(resourceName: "sad")
        default:
            break
        }
        
        cell.smileyImageView?.image = img
        cell.labelView?.text = "#\(e)"
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell = sender as? UITableViewCell,
            let indexPath = self.tableView.indexPath(for: cell){
            let item = items[indexPath.row]
            
            
            var color: UIColor = .white
            switch item {
            case 0:
                color = .green
            case 1:
                color = .yellow
            case 2:
                color = .red
            default:
                break
            }
            
            segue.destination.view.backgroundColor = color
        }
    }
}
