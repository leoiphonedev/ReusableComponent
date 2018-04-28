//
//  EditProfileVC.swift
//  ReusableComponent
//
//  Created by Aman Aggarwal on 26/04/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

class EditProfileVC: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func navigateBack() {
        _ = self.navigationController?.popViewController(animated: true)
    }

    
    @IBAction func saveNameForUser(_ sender: AnyObject) {
        if txtName.text?.count != 0{
            //we will save the name and display it on header view
           // NotificationCenter.default.addObserver(self, selector: #selector(profileChanged(_ :)), name: Notification.Name("PROFILECHANGED"), object: nil)
            NotificationCenter.default.post(name: Notification.Name("PROFILECHANGED"), object: nil, userInfo: ["name":txtName.text ?? ""])

        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
