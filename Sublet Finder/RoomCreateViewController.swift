//
//  RoomCreateViewController.swift
//  Sublet Finder
//
//  Created by AppLabAdmin on 9/23/16.
//  Copyright © 2016 AppLabAdmin. All rights reserved.
//

import UIKit

class RoomCreateViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var streetAddress: UITextField!
    @IBOutlet weak var rent: UITextField!
    @IBOutlet weak var quarterAvailability: UISegmentedControl!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func combineUserInput(){
        
    }
    
    @IBAction func send(_ sender: AnyObject) {
        
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
