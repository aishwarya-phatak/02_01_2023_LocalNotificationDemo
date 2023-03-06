//
//  SecondViewController.swift
//  02_01_2023_LocalNotificationDemo
//
//  Created by Vishal Jagtap on 06/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var username: UITextField!
    
    @IBOutlet var progrssView: UIProgressView!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var progressViewLabel: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
