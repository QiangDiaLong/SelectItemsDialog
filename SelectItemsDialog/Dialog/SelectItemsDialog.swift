//
//  SelectSettingMenuDialog.swift
//  bithumb
//
//  Created by KCJ on 11/20/15.
//  Copyright © 2015 wuguang. All rights reserved.
//

import UIKit

class SelectItemsDialog: BaseDialog, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var itemsTableView:UITableView!
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    
    private var _onClickEvent: ((Int) -> ())?
    
    private var dataArray:[String]!
    
    var onItemClickEvent: ((Int) -> ())? {
        get {
            return _onClickEvent
        }
        set(function) {
            _onClickEvent = function
        }
    }
   
    init(data:[String]!) {
        super.init(nibName: "SelectItemsDialog")
        dataArray = data
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(animated: Bool)
    {
        //First Call Super
        super.viewWillAppear(animated)
        
        //Register the Custom DataCell
        itemsTableView.registerClass(SelectItemTableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpInit()
        setUpConstraint()
        
        itemsTableView.reloadData()
    }
    
    private func setUpInit() {
        
    }
    
    private func setUpConstraint() {
        let height = (dataArray.count * 40)
        heightConstraint.constant = CGFloat(height)
    }
    
    // MARK: UITableView Delegate and Datasource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let cell: SelectItemTableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! SelectItemTableViewCell
        
        let data = dataArray[indexPath.row]
        
        cell.textLabel?.text = data
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        clearFromView()
        
        if(_onClickEvent != nil) {
            _onClickEvent?(indexPath.row)
        }
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 40.0
    }
    
}
