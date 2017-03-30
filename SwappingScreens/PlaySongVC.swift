//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Bryan Fein on 3/29/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLBl: UILabel!
    
    
    private var _selectedSong:String! // Private variable 
    
    var selectedSong: String { // Public computed property // Standard Getter & Setter 
        
        get {
            return _selectedSong
        } set {
            
            _selectedSong = newValue
        }
        
    }
    
    // the code above gets called before viewDidLoad gets called
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLBl.text = _selectedSong
    
    
    }



}
