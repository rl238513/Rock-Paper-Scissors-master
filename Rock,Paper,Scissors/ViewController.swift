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
    
    var gamePiece = 0
    var pictureArray = [UIImage(named: "paper"), UIImage(named: "rock"), UIImage(named: "scissors")]
    var pictureArrayMk2 = [UIImage(named: "PaperWin"), UIImage(named: "rockWin"), UIImage(named: "scissorWin")]
    let number: [Int] = [0, 1, 2,]
    var computerPiece = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backgroundImmage.layer.cornerRadius = self.backgroundImmage.frame.width / 2
        backgroundImmage.backgroundColor = .green
        self.view.backgroundColor = .red
    }
    
    @IBAction func daRules(_ sender: Any) {
        
        if let url = URL(string: "https://www.wrpsa.com/the-official-rules-of-rock-paper-scissors/") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    @IBAction func paperButton(_ sender: Any) {
        gamePiece = 0
        systemPicture()
        tie()
        if computerPiece == 1 {
            self.winnerLabel.text = "win"
            win()
        }
        if computerPiece == 2 {
            loss()
        }
    }
    
    @IBAction func rockButton(_ sender: Any) {
        gamePiece = 1
        systemPicture()
        tie()
        if computerPiece == 2 {
            self.winnerLabel.text = "win"
            win()
        }
        if computerPiece == 0 {
            loss()
        }
    }
    
    @IBAction func scissorButton(_ sender: Any) {
        gamePiece = 2
        systemPicture()
        tie()
        if computerPiece == 0 {
            self.winnerLabel.text = "win"
            win()
        }
        if computerPiece == 1 {
            loss()
        }
    }
    
    func systemPicture() {
        let randomNumber = number.randomElement()!
        systemChoice.image = pictureArray[randomNumber]
        computerPiece = randomNumber
    }
    
    func tie() {
        if gamePiece == computerPiece{
            self.winnerLabel.text = "tie"
            winnerImage.image = UIImage (named: "Tie-PNG-File")
        }
    }
    
    func win() {
        winnerImage.image = pictureArrayMk2[gamePiece]
    }
    
    func loss() {
        winnerImage.image = UIImage (named: "defeat")
        self.winnerLabel.text = "LOSER"
    }
}


