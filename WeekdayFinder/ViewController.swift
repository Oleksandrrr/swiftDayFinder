//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by Ivan Akulov on 07/02/2018.
//  Copyright © 2018 Ivan Akulov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDay() {
        
        
        guard let day = dateTF.text, let mounth  = monthTF.text, let year = yearTF.text else{return }
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        
        dateComponents.day = Int(day)
        dateComponents.month = Int(mounth)
        dateComponents.year = Int(year)
        
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ru_RU")
        dateFormater.dateFormat="EEE"
        
        guard  let date = calendar.date(from: dateComponents) else {return}

        let weekDay = dateFormater.string(from: date)

        resultLabel.text = weekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

