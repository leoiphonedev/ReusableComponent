//
//  ProfileDetailVC.swift
//  ReusableComponent
//
//  Created by Aman Aggarwal on 26/04/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

class ProfileDetailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addProfileHeaderTo(vc: self)
        // Do any additional setup after loading the view.
    }

    @IBAction func navigateBack() {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addProfileHeaderTo(vc: UIViewController) {
        let profileHeader = ProfileHeaderVC(nibName: "ProfileHeaderVC", bundle: nil)
        vc.view.addSubview(profileHeader.view)
        vc.addChildViewController(profileHeader)
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
