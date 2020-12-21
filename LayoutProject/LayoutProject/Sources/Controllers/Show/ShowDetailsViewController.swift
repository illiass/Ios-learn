//
//  ShowDetailsViewController.swift
//  LayoutProject
//
//  Created by Illia S. on 18.12.2020.
//

import UIKit

class ShowDetailsViewController: UIViewController {

    @IBOutlet weak var showNameLable: UILabel!
    
    var showService: ShowProtocol = ShowService()
    var id = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showNameLable.text = showService.getInfo(index: id).name

        
    }
    
    @IBAction func upSwitchAction(_ sender: Any) {
        showNameLable.text = showService.getInfo(index: self.id + 1).name
        id += 1
    }
    
    @IBAction func buttonSwitchAction(_ sender: Any) {
        showNameLable.text = showService.getInfo(index: self.id - 1).name
        id -= 1
    }
    

}
