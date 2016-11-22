//
//  SectionCustomTableViewCell.swift
//  Swift_TableView
//
//  Created by 全球蛙 on 2016/11/22.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

import UIKit

class SectionCustomTableViewCell: UITableViewCell {

    
    var img1:UIImageView!
    var img2:UIImageView!
    var img3:UIImageView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.SetUI()
        
    }
    
    func SetUI(){
    
        self.img1 = UIImageView.init()
        self.img1.backgroundColor = UIColor.purple
        self.contentView.addSubview(img1)
        self.img2  = UIImageView.init()
        self.img2.backgroundColor = UIColor.purple
        self.contentView.addSubview(img2)
        self.img3 = UIImageView.init()
        self.img3.backgroundColor = UIColor.purple
        self.contentView.addSubview(img3)
    }
    
    override func layoutSubviews() {
        
         super.layoutSubviews()
        
         self.img1.frame = CGRect(x:10,y:5,width:(UIScreen.main.bounds.width - 40)/3,height:90)
         self.img2.frame = CGRect(x:img1.frame.origin.x + img1.frame.size.width + 10,y:5,width:(UIScreen.main.bounds.width - 40)/3,height:90)
         self.img3.frame = CGRect(x:img2.frame.origin.x + img2.frame.size.width + 10,y:5,width:(UIScreen.main.bounds.width - 40)/3,height:90)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
