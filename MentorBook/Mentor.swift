//
//  Mentor.swift
//  MentorBook
//
//  Created by Haruko Okada on 9/3/20.
//  Copyright © 2020 Haruko Okada. All rights reserved.
//

import UIKit

class Mentor{
    
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
   
}
