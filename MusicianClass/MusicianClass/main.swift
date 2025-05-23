//
//  main.swift
//  MusicianClass
//
//  Created by Okan Aktas on 23.05.2025.
//

import Foundation

let okan = Musicians(name: "Okan", age: 28, instrument: "Guitar", musicianType: .Drummer)
print(okan.musicianType)

okan.sing()

let berkay = SuperMusician(name: "Berkay", age: 12, instrument: "Piano", musicianType: .LeadGuitar)
berkay.sing()
berkay.sing2()
