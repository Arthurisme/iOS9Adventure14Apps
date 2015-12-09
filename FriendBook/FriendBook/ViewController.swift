//
//  ViewController.swift
//  FriendBook
//
//  Created by Arthur on 2015-12-01.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var TableView: UITableView!
    
    let myFriends = ["Bush","Tramp","Henny","Joe","Tom","Dienkens","Rods"]
    
    var selectedFriend = "Joe"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.TableView.dataSource = self
        self.TableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
return myFriends.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = UIColor.greenColor()
        cell.textLabel!.text = myFriends[indexPath.row]
        
        return cell
        
    }
    
    

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.selectedFriend = myFriends[indexPath.row]
        self.performSegueWithIdentifier ("FriendListToFriendDetailSegue", sender: self)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "FriendListToFriendDetailSegue"){
    
        let detailViewController = segue.destinationViewController as! FriendDetailViewController
        detailViewController.friendName = self.selectedFriend
        }
    }

}

