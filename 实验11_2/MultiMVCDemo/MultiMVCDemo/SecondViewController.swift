//
//  SecondViewController.swift
//  MultiMVCDemo
//
//  Created by 2016110324 on 2018/12/5.
//  Copyright © 2018年 SICNU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfNO: UITextField!
    
    var stu:Student!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.text = stu.name
        tfNO.text = stu.no
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(_ sender: Any) {
        stu.no = tfNO.text!
        stu.name = tfName.text!
        navigationController?.popViewController(animated: true)
    }
    
}
