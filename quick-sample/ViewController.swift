//
//  ViewController.swift
//  quick-sample
//
//  Created by MaedaRyoto on 2015/08/24.
//  Copyright (c) 2015年 MaedaRyoto. All rights reserved.
//

import UIKit

// プロトコルを追加
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Tableで使用する配列を用意
    let items = ["test1", "test2", "test3", "test4", "test5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの高さと幅を取得
        let width: CGFloat = self.view.frame.width
        let height: CGFloat = self.view.frame.height
        
        // Status Barの高さを取得
        let barHeight: CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height
        
        // TableViewを作成
        let tableView: UITableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: width, height: height - barHeight))
        
        // Cell名を登録
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // DataSourceを設定
        tableView.dataSource = self
        
        // Delegateを設定
        tableView.delegate = self
        
        // Viewに追加
        self.view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Cellの総数を返す
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // Cellに値を設定
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Cellを取得
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        // Cellに値を設定
        cell.textLabel!.text = items[indexPath.row]
        
        return cell
    }
    
}

