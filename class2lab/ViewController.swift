//
//  ViewController.swift
//  class2lab
//
//  Created by brendan woods on 2016-01-26.
//  Copyright © 2016 brendan woods. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthdate:UIDatePicker?
    @IBOutlet weak var astrologySignDisplayPrefix:UILabel?
    @IBOutlet weak var astrologySignDisplay:UILabel?
    @IBOutlet weak var astrologySignImage:UIImageView?
    
    var astrologySign = ""
    var birthdateEntered:(month:String,day:Int) = ("",0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitDate(sender: UIButton) {
        let dateEntered = birthdate?.date
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMMM"
        let convertedMonthString = formatter.stringFromDate(dateEntered!)
        
        let formatter2 = NSDateFormatter()
        formatter2.dateFormat = "dd"
        let convertedDayString = formatter2.stringFromDate(dateEntered!)
        
        birthdateEntered.month = convertedMonthString
        birthdateEntered.day = Int(convertedDayString)!
        
        determineSign()
        displaySign()
    }
    
    func determineSign() {
        
        switch birthdateEntered.month {
        case "March":
            if birthdateEntered.day < 21 {
                astrologySign = "Pisces"
            }else {
                astrologySign = "Aries"
            }
            
            case "April":
                if birthdateEntered.day < 20 {
                    astrologySign = "Aries"
                } else {
                    astrologySign = "Taurus"
            }
            
            case "May":
                if birthdateEntered.day < 21 {
                    astrologySign = "Taurus"
                } else {
                    astrologySign = "Gemini"
            }
            
            case "June":
                if birthdateEntered.day < 20 {
                    astrologySign = "Gemini"
                } else {
                    astrologySign = "Cancer"
            }
            
            case "July":
                if birthdateEntered.day < 23 {
                    astrologySign = "Cancer"
                } else {
                    astrologySign = "Leo"
            }
            
            case "August":
                if birthdateEntered.day < 23 {
                    astrologySign = "Leo"
                } else {
                    astrologySign = "Virgo"
            }
            
            case "September":
                if birthdateEntered.day < 23 {
                    astrologySign = "Virgo"
                } else {
                    astrologySign = "Libra"
            }
            
            case "October":
                if birthdateEntered.day < 23 {
                    astrologySign = "Libra"
                } else {
                    astrologySign = "Scorpio"
            }
            
            case "November":
                if birthdateEntered.day < 22 {
                    astrologySign = "Scorpio"
                } else {
                    astrologySign = "Sagittarius"
            }
            
            case "December":
                if birthdateEntered.day < 22 {
                    astrologySign = "Sagittarius"
                } else {
                    astrologySign = "Capricorn"
            }
            
            case "January":
                if birthdateEntered.day < 20 {
                    astrologySign = "Capricorn"
                } else {
                    astrologySign = "Aquarius"
            }
            
            case "February":
                if birthdateEntered.day < 19 {
                    astrologySign = "Aquarius"
                } else {
                    astrologySign = "Pisces"
            }
        default:
            print("default case reached")
        }
        
        print(astrologySign)
    }
    
    
    
    func displaySign() {
        astrologySignDisplayPrefix?.text = "You are a"
        astrologySignDisplay?.text = astrologySign
        astrologySignImage?.image = UIImage(named: "\(astrologySign).jpg")
    }
}

