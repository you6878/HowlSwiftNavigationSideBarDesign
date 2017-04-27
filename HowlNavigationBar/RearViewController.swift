//
//  RearViewController.swift
//  HowlNavigationBar
//
//  Created by 유명식 on 2017. 4. 27..
//  Copyright © 2017년 swift. All rights reserved.
//

import UIKit

class RearViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let arrayStr = ["공지사항","게시판","사진"]
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        profileImage.layer.borderColor = UIColor.black.cgColor
        profileImage.layer.borderWidth = 1
        profileImage.layer.masksToBounds = false
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        profileImage.clipsToBounds = true
        
        tableView.tableFooterView = UIView()
    
    }
    
    
   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
     
        return arrayStr.count
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        cell.name.text = arrayStr[indexPath.row]
        
        
        
        return cell
        
        
    }
    
    
    
}

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
}
