//
//  quick_sampleTests.swift
//  quick-sampleTests
//
//  Created by MaedaRyoto on 2015/08/24.
//  Copyright (c) 2015年 MaedaRyoto. All rights reserved.
//

import UIKit
import Quick
import Nimble

class quick_sampleSpec: QuickSpec {
    
    override func spec() {
        var viewController: ViewController!
        
        beforeEach {
            viewController = ViewController()
        }
        
        describe("viewDidLoad") {
            beforeEach {
                // オマジナイ　view を描画するのに必要
                let _ =  viewController.view
            }
            
            it("first cell is test1") {
                let tableView = viewController.view.subviews.first as! UITableView
                let indexPath = NSIndexPath(forRow: 0, inSection: 0)
                let cell = viewController.tableView(tableView, cellForRowAtIndexPath: indexPath)
                expect(cell.textLabel?.text).to(equal("test1"))
            }
            
            it("second cell is test2") {
                let tableView = viewController.view.subviews.first as! UITableView
                let indexPath = NSIndexPath(forRow: 1, inSection: 0)
                let cell = viewController.tableView(tableView, cellForRowAtIndexPath: indexPath)
                expect(cell.textLabel?.text).to(equal("test2"))
            }
        }
    }
}
