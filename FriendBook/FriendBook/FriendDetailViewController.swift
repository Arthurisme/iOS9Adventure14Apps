//
//  FriendDetailViewController.swift
//  FriendBook
//
//  Created by Arthur on 2015-12-07.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {
    @IBOutlet weak var LabelFriendName: UILabel!
    @IBOutlet weak var LabelFriendBirthday: UILabel!
    
    var friendName = "Joe"
    var friendBirthday = "June 12"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.LabelFriendName.text = "\(self.friendName)'s birthday is: "
        self.LabelFriendBirthday.text = self.friendBirthday
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
