//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Bryan Fein on 3/29/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue

    
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil) // do we care about what happens after the screen gets loaded, no? so set it to nil.
    }


    @IBAction func loadThirdScreen(_ sender: Any) {
        
        let songTitle = "Mafia B - Come With Me" // lets say that we selected a song from the viewcontroller and its this song title
        
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle) // Identifier is the name of the segue you set up in the storyboard, and sender is the object that you would like to pass to the other VC
    
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC { // the segue knows which VC its going to and need to cast to make sure its going to the correct one, PlaySongVC
            
            if let song = sender as? String { // if theres data in the sender, which there is
                destination.selectedSong = song

            }
            
            
        }
    }
    
}
