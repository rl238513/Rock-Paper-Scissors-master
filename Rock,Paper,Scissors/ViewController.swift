//
//  ViewController.swift
//  Rock,Paper,Scissors
//
//  Created by EDUARDO MENDOZA on 12/3/18.
//  Copyright © 2018 EDUARDO MENDOZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countNumber: UILabel!
    @IBOutlet weak var systemChoice: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var winnerImage: UIImageView!
    @IBOutlet weak var backgroundImmage: UIImageView!
    
    var pictureArray = [#imageLiteral(resourceName: "paper.png"), #imageLiteral(resourceName: "rock.png"), #imageLiteral(resourceName: "scissors.png")]
    
    let randomInt = Int.random(in: 0...2)
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
     backgroundImmage.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.RawValue(UInt8(UIView.AutoresizingMask.flexibleBottomMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleHeight.rawValue) | UInt8(UIView.AutoresizingMask.flexibleRightMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleLeftMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleTopMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleWidth.rawValue)))
        self.backgroundImmage.layer.cornerRadius = self.backgroundImmage.frame.width / 2
        backgroundImmage.backgroundColor = .green
        self.view.backgroundColor = .red
         winnerImage.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.RawValue(UInt8(UIView.AutoresizingMask.flexibleBottomMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleHeight.rawValue) | UInt8(UIView.AutoresizingMask.flexibleRightMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleLeftMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleTopMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleWidth.rawValue)))
         systemChoice.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.RawValue(UInt8(UIView.AutoresizingMask.flexibleBottomMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleHeight.rawValue) | UInt8(UIView.AutoresizingMask.flexibleRightMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleLeftMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleTopMargin.rawValue) | UInt8(UIView.AutoresizingMask.flexibleWidth.rawValue)))
    }
    
    @IBAction func paperButton(_ sender: Any) {
        countReset()
        systemPicture()
    }
    
    @IBAction func rockButton(_ sender: Any) {
        countReset()
        systemPicture()
    }
    
    @IBAction func scissorButton(_ sender: Any) {
        countReset()
        systemPicture()
    }
    
    func systemPicture() {
//        countReset()
        systemChoice.image = pictureArray[count]
    }
    
    func countReset(){
        countNumber.resignFirstResponder()
        if count == 0 {
            systemPicture()
            count += 1
        }
        else if count == 1 {
            systemPicture()
            count += 1
        }
       else if count == 2 {
            count += 1
            systemPicture()
            count = 0
            Int(countNumber.text!)
            countNumber.text = String(count)
        }
//        else if count == 3{
//            count = 0
//
//        }
    }
    
    
    
    
    
}
