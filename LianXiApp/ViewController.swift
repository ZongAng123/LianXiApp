//
//  ViewController.swift
//  LianXiApp
//
//  Created by 纵昂 on 2021/5/20.
//  swift- tableView
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{
   
//    重用标识
   let CustomcellReuseidentifier = "Customcell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        设置设置导航栏标题
        self.title="主页"
//        设置导航栏背景色
//        self.navigationController?.navigationBar.barTintColor=UIColor.gray
//        //导航栏还可以设置图片.
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "testnavigationBar"), forBarMetrics: UIBarMetrics.Default)

//        注册cell
//        self.tableView.register(Customcell.self, forCellReuseIdentifier: CustomcellReuseidentifier)
/*
  (三)唯物辩证法三大规律
   1、对立统一规律
         对立统一规律是唯物辩证法最根本的规律，揭示了事物发展的源泉和动力，是唯物辩证法的实质和核心
         对立统一规律就是矛盾规律。矛盾对立面双方既有同一性又有斗争性。
         矛盾的普遍性属于事物的共性，矛盾的特殊性则是事物的个性。矛盾的普遍性和特殊性的关系，就是事物的共性和个性之间的关系
   2、量变质变规律
         量变是事物的量的规定性在度的范围内发生的微小的、不显著的变化，是事物原有发展过程的延续和渐进。质变是事物由一种质态向另一种质态的飞跃，是事物延续和渐进过程的中断。事物的变化有没有超出"度"的范围，是区分量变与质变的根本标志。任何事物的变化都是量变和质变的统一。量变是质变的必要准备，质变是量变的必然结果，事物不断不断经过"量变-质变-新的量变-新的质变"，两种状态循环往复，永不停息地向前发展。
   3、否定之否定规律
         事物的发展是通过否定实现的，当事物内部的肯定方面占据主导地位的时候，事物就处在肯定阶段;
*/
        
//       Swift 设置navigation左右两侧按钮
        let item=UIBarButtonItem(title:"分享",style: UIBarButtonItem.Style.plain,target:self,action:nil)
        self.navigationItem.leftBarButtonItem=item
        
        
        let button = UIButton(frame:CGRect(x:10, y:150, width:100, height:30))
        //设置按钮文字
        button.setTitle("按钮", for:.normal)
//        按钮文字的字体和大小设置
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
//        按钮背景颜色设置
        button.backgroundColor = UIColor.black
//        设置按钮背景图片
        button.setBackgroundImage(UIImage(named:"bg1"), for:.normal)
//        按钮触摸点击事件响应
        button.addTarget(self, action:#selector(self.tapped), for:.touchUpInside)
        let item2=UIBarButtonItem(customView: button)
        self.navigationItem.rightBarButtonItem=item2
        
        
        setupUI()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
//    Swift UITableView 选中并立即取消选中实现方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
   
//    cell 高度的设置
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        根据重用标识区出来的cell要转为注册的cell类型，才能 点  出来他的属性
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomcellReuseidentifier, for: indexPath) as! Customcell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
//        cell.textLabel?.text="\(indexPath.row)"
//        cell.backgroundColor = UIColor.red
        
//        禁止UITableView选中高亮，可以对UITableViewCell实例设置样式
        cell.selectionStyle = .none
        
        cell.namelabel.text = "张三"
        cell.phonelabel.text = "66666666"
        cell.agelabel.text = "18"
        
        return cell
    }

    func setupUI()  {
            //初始化table，为了简化代码，frame为全屏尺寸
            let table:UITableView = UITableView(frame:view.bounds, style: .plain)
            //table添加到视图上，并声明delegate和datasource
            self.view!.addSubview(table)
            table.dataSource = self
            table.delegate = self
            table.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
//          注册cell
            table.register(Customcell.self, forCellReuseIdentifier: CustomcellReuseidentifier)
        
        
        }
    
//    导航按钮事件
    @objc func tapped(){
         print("Swift自学")
//       导航跳转
        let vc = BottonViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}

/*
 1、世界的普遍联系
 联系是指事物之间以及使事物内部诸要素之间的相互影响、相互制约和相互作用的关系，具有普遍性和客观性。
 普遍性:任何事物的内部各个部分、要素、环节是相互联系的。任何事物都与周围的其他事物相互联系着，整个世界是一个相互联系的统一整体
 客观性:联系是事物本身固有的，不以人的意志为转移。联系既不能人为臆造，也不能人为消灭
 2、世界的永恒发展
 世界上的任何事物，都有其产生和发展的过程。整个世界就是一个无限变化和永恒发展着的物质世界，一成不变的事物是没有的。发展就是新事物的产生和旧事物的灭亡，即新事物代替旧事物
 */
