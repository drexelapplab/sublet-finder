//
//  TermAvailableButton.swift
//  Sublet Finder
//
//  Created by AppLabAdmin on 9/26/16.
//  Copyright © 2016 AppLabAdmin. All rights reserved.
//

import UIKit

class TermAvailableButton: UIButton {
    fileprivate var availableState: Bool = false
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    func getAvailableState() -> Bool{
        return availableState
    }
    
    func setAvailableState(_ state: Bool){
        availableState = state
    }
    

}
