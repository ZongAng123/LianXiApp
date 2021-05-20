//
//  Customcell.swift
//  LianXiApp
//
//  Created by 纵昂 on 2021/5/20.
//  自定义cell
//

import UIKit

//屏幕的宽
let kScreenWidth = UIScreen.main.bounds.size.width
//屏幕的高
let kScreenHeigh = UIScreen.main.bounds.size.height

class Customcell: UITableViewCell {
    var namelabel:UILabel!
    var phonelabel:UILabel!
    var agelabel:UILabel!
    
// 一个类A如果有自己独有的初始化方法，自定义类B的时候如果B继承自A。此时就重写A类独有的初始化方法
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
      super.init(style: style, reuseIdentifier:reuseIdentifier )
      self.setupViews()

    }
    
//
    func setupViews() {
//      namelabel
        self.namelabel = UILabel(frame: CGRect(x: 10, y: 5, width: kScreenWidth-20, height: 40))
//        namelabel.backgroundColor = UIColor.red
//      cell在自定义视图的时候把自定义的控件加到contentView上
        self.contentView.addSubview(namelabel)
//      phonelabel
        phonelabel = UILabel(frame: CGRect(x: 10, y: 50, width: kScreenWidth-20, height: 40))
//        phonelabel.backgroundColor = UIColor.green
        self.contentView.addSubview(phonelabel)
//      agelabel
        agelabel = UILabel(frame: CGRect(x: 10, y: 95, width: kScreenWidth-20, height: 40))
//        agelabel.backgroundColor = UIColor.yellow
        self.contentView.addSubview(agelabel)
        
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
