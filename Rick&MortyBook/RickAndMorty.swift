//
//  RickAndMorty.swift
//  Rick&MortyBook
//
//  Created by Emre Gemici on 2.08.2022.
//

import Foundation
import UIKit

class RickMorty{
    
    var name : String
    var job : String
    var image : UIImage
    var comment : String
    
    init(rickMortyName: String, rickMortyJob:String, rickMortyImage:UIImage, rickMortyComment:String){
        
        name = rickMortyName
        job = rickMortyJob
        image = rickMortyImage
        comment = rickMortyComment
        
    }
}
