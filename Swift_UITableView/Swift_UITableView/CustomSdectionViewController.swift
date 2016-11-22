//
//  CustomSdectionViewController.swift
//  Swift_TableView
//
//  Created by 全球蛙 on 2016/11/22.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

import UIKit

class CustomSdectionViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableview:UITableView!
    var arr = ["搞笑","娱乐","精品","新闻","政治"]
    var headerView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableview = UITableView.init(frame: UIScreen.main.bounds, style: .plain)
        self.view.addSubview(tableview)

        self.tableview.delegate = self;
        self.tableview.dataSource = self;
        self.tableview.register(SectionCustomTableViewCell.self, forCellReuseIdentifier: "cell")
        //headerView
        
        self.headerView = UIView.init(frame: CGRect(x:0,y:0,width:UIScreen.main.bounds.size.width,height:200))
        self.headerView.backgroundColor = UIColor.red
        self.tableview.tableHeaderView = self.headerView
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        }else if section == 1
        {
        
            return 3
        
        }else if section == 2
        
        {
            return 3
        
        }else
        {
        
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:SectionCustomTableViewCell = tableview.dequeueReusableCell(withIdentifier: "cell")! as! SectionCustomTableViewCell
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let uilabel:UILabel!
        
        uilabel = UILabel.init(frame: CGRect(x:10,y:0,width:UIScreen.main.bounds.size.width-20,height:40))
        uilabel.text = self.arr[section]
        uilabel.backgroundColor = UIColor.purple
        
        return uilabel
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.arr[section];
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
