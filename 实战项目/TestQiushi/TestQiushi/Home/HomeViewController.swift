//
//  HomeViewController.swift
//  TestQiushi
//
//  Created by 侯森魁 on 2020/4/2.
//  Copyright © 2020 侯森魁. All rights reserved.
//


class HomeViewController: UIViewController {
    lazy var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.bounds
        view.addSubview(tableView)
        
        AF.request(API.imgrank,parameters:["page":1,"count":20]).responseJSON {
            response  in
//            guard let dict = response.result.value else {return}
//            let items = JSON(dict)["items"].arrayObject
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
