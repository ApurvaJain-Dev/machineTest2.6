//
//  ViewController.swift
//  machineTest2.6
//
//  Created by rpsindia on 13/09/19.
//  Copyright © 2019 Apurva. All rights reserved.
//

import UIKit

struct Product {
    var productName : String
    var productNumber : Int
}
class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    
    var emptyDictionary = [[String: Any]]()

    
    @IBOutlet weak var tableViewSnack: UITableView!
    
    var products = [Product(productName: "Mac Machine", productNumber: 123456), Product(productName: "Apple Watch", productNumber: 852468), Product(productName: "Mac Mini", productNumber: 365878), Product(productName: "iPad", productNumber: 467576)]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.productNameLabel.text = products[indexPath.row].productName
        cell.productNumberLabel.text = String(products[indexPath.row].productNumber)
    cell.delegate = self
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let snackCell = UINib(nibName: "TableViewCell", bundle: nil)
    self.tableViewSnack.register(snackCell, forCellReuseIdentifier: "cell")
    }
    
    }
extension ViewController : TableViewCellDelegate {
    func didTappedSwitch(cell: TableViewCell) {
        let productDictionary = ["productNumber" : cell.productNumberLabel.text!, "productName" : cell.productNameLabel.text!]
       
        for i in 0..<emptyDictionary.count {
            let obj = emptyDictionary[i]
            if(obj["productName"] as! String == cell.productNameLabel.text!) {
                emptyDictionary.remove(at: i)
                print(emptyDictionary)
                return
            }
        }
        
       emptyDictionary.append(productDictionary)
        print(emptyDictionary)
       

    }
    
    
}
