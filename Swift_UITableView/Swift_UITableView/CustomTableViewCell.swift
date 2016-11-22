//
//  CustomTableViewCell.swift
//  Swift_TableView
//
//  Created by 全球蛙 on 2016/11/22.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    var headImage:UIImageView!
    var nikeName:UILabel!
    var story:UILabel!
 
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.SetUIInterFace()
        
    }
    
    func SetUIInterFace()  {
        
        self.headImage = UIImageView.init()

        self.contentView.addSubview(headImage)
        self.nikeName = UILabel.init()
        self.nikeName.backgroundColor = UIColor.blue
        self.contentView.addSubview(nikeName)
        
        self.story = UILabel.init()
        self.story.backgroundColor = UIColor.purple
        self.contentView.addSubview(story)
        
    }
    
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        self.headImage.frame = CGRect(x:0,y:0,width:100,height:100);
        self.nikeName.frame = CGRect(x:105,y:0,width:UIScreen.main.bounds.width - 110,height:30);
        self.story.frame = CGRect(x:105,y:35,width:UIScreen.main.bounds.width - 110,height:65);
        
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
