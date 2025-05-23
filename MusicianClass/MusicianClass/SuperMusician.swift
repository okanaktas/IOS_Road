//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Okan Aktas on 23.05.2025.
//

import Foundation

class SuperMusician : Musicians{
    
    
    func sing2(){
        print("enter night!")
    }
    
    override func sing() {
        super.sing()
        print("super sing!")
    }
}
