//
//  ViewController.swift
//  iOSJenkins
//
//  Created by enomoto on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    let dummyList = ["Apple", "Orange", "Banana", "Mango", "Bilberry", "Blackberry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.delegate = self
        myPickerView.dataSource = self
        myDatePicker.datePickerMode = .date
        
        myDatePicker.setDate(NSDate() as Date, animated: true)
        myDatePicker.minuteInterval = 5
        myDatePicker.minimumDate = NSDate(timeInterval: -93312000, since: NSDate() as Date) as Date
        myDatePicker.maximumDate = NSDate(timeIntervalSinceNow: 93312000) as Date
        myDatePicker.addTarget(self, action: #selector(dateChange), for: UIControl.Event.valueChanged)
    }

    
    @objc func dateChange(datePicker:UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        let date = myDatePicker.date
        let dateText = formatter.string(from: date)
        timeLabel.text = dateText
    }
    
    @IBAction func button1Click(_ sender: Any) {
        
        myLabel.text = "fruit Label"
        timeLabel.text = "time Label"
        myDatePicker.setDate(NSDate() as Date, animated: true)
        myPickerView.selectRow(0, inComponent: 0, animated: true)
        
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


