//
//  ViewController.swift
//  MentorBook
//
//  Created by Haruko Okada on 9/3/20.
//  Copyright © 2020 Haruko Okada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
   
    var mentorArray: [Mentor] = []
    var index: Int = 0
    
    @IBAction func nextBtn(_ sender: Any) {
        index = (index + 1) % 3
        
        setUI()
    }
    
    @IBAction func backBtn(_ sender: Any) {
        index = (index + 1) % 3
        
        setUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mentorArray.append (Mentor(name: "Nagata", imageName: "nagata.jpg", course: "iPhone" ))
        mentorArray.append (Mentor(name: "Ryo", imageName: "ryo.jpg", course: "Unity" ))
        mentorArray.append (Mentor(name: "Taithi", imageName: "taithi.jpg", course: "WebS, WebD" ))
    }
    
    func setUI(){
        
        imageView.image = mentorArray[index].getImage()
        nicknameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
        
    }


}

