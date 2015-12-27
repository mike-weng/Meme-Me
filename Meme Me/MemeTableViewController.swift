//
//  MemeTableViewController.swift
//  Meme Me
//
//  Created by Mike Weng on 12/26/15.
//  Copyright © 2015 Weng. All rights reserved.
//

import Foundation
import UIKit

class MemeTableViewController: UITableViewController {
    var memes: [Meme] {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }

    override func viewDidLoad() {
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    // Table
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath) as! MemeTableViewCell
        
        cell.tableTextField.text = memes[indexPath.row].topText as String
        cell.tableImageView.image = memes[indexPath.row].memedImage
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("MemeDetailViewController") as! MemeDetailViewController
        detailViewController.meme = memes[indexPath.row]
        self.navigationController!.pushViewController(detailViewController, animated: true)
        }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    
    
}