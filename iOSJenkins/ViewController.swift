//
//  ViewController.swift
//  iOSJenkins
//
//  Created by enomoto on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1Click(_ sender: Any) {
        let alertView = UIAlertController.init(title: "テストbutton1", message: "ばか", preferredStyle: .alert)
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
        let alertView = UIAlertController.init(title: "テストbutton2", message: "ばか", preferredStyle: .alert)
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

