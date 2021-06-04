//
//  ViewController.swift
//  iOSJenkins
//
//  Created by enomoto on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myDatePickerView: UIDatePicker!
    
    let dummyList = ["Apple", "Orange", "Banana", "Mango", "Bilberry", "Blackberry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.delegate = self
        myPickerView.dataSource = self
        myDatePickerView.datePickerMode = .date
        
        myDatePickerView.setDate(NSDate() as Date, animated: true)
        myDatePickerView.minuteInterval = 5
        myDatePickerView.minimumDate = NSDate(timeInterval: -93312000, since: NSDate() as Date) as Date
        myDatePickerView.maximumDate = NSDate(timeIntervalSinceNow: 93312000) as Date
    }

    @IBAction func button1Click(_ sender: Any) {
        let alertView = UIAlertController.init(title: "テストbutton1", message: "aaaa", preferredStyle: .alert)
           let alert = UIAlertAction.init(title: "ok", style: .destructive) { (UIAlertAction) in
            print("ok")
           }
           let cancleAlert = UIAlertAction.init(title: "キャンセル", style: .cancel) { (UIAlertAction) in
               print("キャンセル")
           }
           alertView.addAction(cancleAlert)
           alertView.addAction(alert);
           self.present(alertView, animated: true, completion: nil)
        
    }
    
    @IBAction func button2Click(_ sender: Any) {
        let alertView = UIAlertController.init(title: "テストbutton2", message: "aaaa", preferredStyle: .alert)
           let alert = UIAlertAction.init(title: "ok", style: .destructive) { (UIAlertAction) in
            print("ok")
           }
           let cancleAlert = UIAlertAction.init(title: "キャンセル", style: .cancel) { (UIAlertAction) in
               print("キャンセル")
           }
           alertView.addAction(cancleAlert)
           alertView.addAction(alert);
           self.present(alertView, animated: true, completion: nil)
    }
}

extension ViewController:UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dummyList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return dummyList[row]
       }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        myLabel.text = dummyList[row]
    }
}

