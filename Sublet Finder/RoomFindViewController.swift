//
//  RoomFindViewController.swift
//  Sublet Finder
//
//  Created by AppLabAdmin on 9/26/16.
//  Copyright © 2016 AppLabAdmin. All rights reserved.
//

import UIKit

class RoomFindViewController: UIViewController {
    @IBOutlet weak var inputZip: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var springButton: TermAvailableButton!
    @IBOutlet weak var summerButton: TermAvailableButton!
    @IBOutlet weak var fallButton: TermAvailableButton!
    @IBOutlet weak var winterButton: TermAvailableButton!
    
    struct roomFindTerms{
        var zip = ""
        var termsAvailable: [Bool] = [false,false,false,false] // Spring,Summer,Fall,Winter
    }
    
    var terms = roomFindTerms()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setTermsAvailable(_ spring: Bool, summer: Bool, fall: Bool, winter: Bool){
        terms.termsAvailable = [spring,summer,fall,winter]
        if(terms.termsAvailable[0] == false){
            label.text = "NOSPRING"
        }
        else{
            label.text = "SPRING"
        }
    }
    
    @IBAction func toggleTermState(_ sender: TermAvailableButton) {
        if(sender.getAvailableState() == false){
            sender.backgroundColor = UIColor.cyan
            sender.setAvailableState(true)
            
            if(terms.termsAvailable[0] == false){
                label.text = "NOSPRING"
            }
            else{
                label.text = "SPRING"
            }
            
            terms.termsAvailable = [
                springButton.getAvailableState(),
                summerButton.getAvailableState(),
                fallButton.getAvailableState(),
                winterButton.getAvailableState()]
        }
            
        else{
            sender.backgroundColor = UIColor.white
            sender.setAvailableState(false)
            
            if(terms.termsAvailable[0] == false){
                label.text = "NOSPRING"
            }
            else{
                label.text = "SPRING"
            }
            
            terms.termsAvailable = [
                springButton.getAvailableState(),
                summerButton.getAvailableState(),
                fallButton.getAvailableState(),
                winterButton.getAvailableState()]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "s_search"{
            if let destination = segue.destination as? RoomSearchViewController{
                //MOVE STRUCT HERE destination.
            }
        }
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
