//
//  ProfileDetailVC.swift
//  ReusableComponent
//
//  Created by Aman Aggarwal on 26/04/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

class ProfileDetailVC: UIViewController, ProfileHeaderVcDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let dlg = UIApplication.shared.delegate as! AppDelegate
        dlg.addProfileHeaderTo(vc: self)
    }

    @IBAction func navigateBack() {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func nameOfUser(_ name:String) {
        print("inside profile detail class == \(name)")
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
