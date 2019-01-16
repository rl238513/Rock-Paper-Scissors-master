//
//  ViewController.swift
//  Rock,Paper,Scissors
//
//  Created by EDUARDO MENDOZA on 12/3/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var systemChoice: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var winnerImage: UIImageView!
    @IBOutlet weak var backgroundImmage: UIImageView!
    
    var pictureArray = [#imageLiteral(resourceName: "paper.png"), #imageLiteral(resourceName: "rock.png"), #imageLiteral(resourceName: "scissors.png")]
    let number: [Int] = [0, 1, 2,]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backgroundImmage.layer.cornerRadius = self.backgroundImmage.frame.width / 2
        backgroundImmage.backgroundColor = .green
        self.view.backgroundColor = .red
    }
    
    @IBAction func daRules(_ sender: Any) {
    
        if let url = URL(string: "https;//www.wrpsa.com/the-official-rules-of-rock-paper-scissors/") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    @IBAction func paperButton(_ sender: Any) {
        systemPicture()
    }
    
    @IBAction func rockButton(_ sender: Any) {
        systemPicture()
    }
    
    @IBAction func scissorButton(_ sender: Any) {
        systemPicture()
    }
    
    func systemPicture() {
        let randomNumber = number.randomElement()!
        systemChoice.image = pictureArray[randomNumber]
    }
    
    
    
    
    
}
