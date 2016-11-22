//
//  MainViewController.swift
//  Swift_TableView
//
//  Created by 全球蛙 on 2016/11/22.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView!
    var array = ["有分区的TableView","自定义cell","自定义的sectiontableview","编辑tableview","","自定义分区的tableview"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.SetupUI()
     

    }
    
    func SetupUI (){
        
   //    tableView = UITableView.init(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
   //     tableView.frame = CGRect(x:0,y:0,width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.size.height)
        tableView = UITableView.init(frame: CGRect(x:0,y:0,width:UIScreen.main.bounds.size.width,height:UIScreen.main.bounds.size.height), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self;
        self.view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
      
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = self.array[indexPath.row]
        cell.imageView?.image = UIImage.init(named: "")
        cell.detailTextLabel?.text = self.array[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
            let sectionTable = SectionViewController()
            
            self.navigationController?.pushViewController(sectionTable, animated: true)
            
        }else if indexPath.row == 1 {
            let custom = CustomViewController()
            
            self.navigationController?.pushViewController(custom, animated: true)
            custom.title = "custom TableviewCell"
            
        }else if indexPath.row == 2 {
            let custom = CustomSdectionViewController()
            
            self.navigationController?.pushViewController(custom, animated: true)
            custom.title = "custom SectionTableviewCell"
            
        }else if indexPath.row == 3
        {
        
            let editTableView = EditViewController()
            
            self.navigationController?.pushViewController(editTableView, animated: true)
            
            editTableView.title = "edit tableviewController"
        
        }
    }
    

   
}
