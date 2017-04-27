//
//  ViewController.swift
//  HowlNavigationBar
//
//  Created by 유명식 on 2017. 4. 20..
//  Copyright © 2017년 swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var NavigationButtonLeft: UIBarButtonItem!

    @IBAction func NavigationButtonRight(_ sender: Any) {
        
        let alert = UIAlertController(title: "Mail", message: "도착한 메세지가 없습니다.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "확인", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert,animated: true,completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        NavigationButtonLeft.target = self.revealViewController()
        NavigationButtonLeft.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

