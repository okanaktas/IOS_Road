//
//  Musicians.swift
//  MusicianClass
//
//  Created by Okan Aktas on 23.05.2025.
//

import Foundation

enum MusiciansType{
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
}

class Musicians{
    
    //Property
    var name : String
    var age : Int
    var instrument : String
    var musicianType : MusiciansType
    
    init(name: String, age: Int, instrument: String, musicianType: MusiciansType) {
        self.name = name
        self.age = age
        self.instrument = instrument
        self.musicianType = musicianType
    }
}
