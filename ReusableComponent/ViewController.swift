//
//  ViewController.swift
//  ReusableComponent
//
//  Created by Aman Aggarwal on 25/04/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ProfileHeaderVcDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dlg = UIApplication.shared.delegate as! AppDelegate
        dlg.addProfileHeaderTo(vc: self)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func nameOfUser(_ name:String) {
        print("inside viewcontroller.swift class == \(name)")
    }
    

    @IBAction func navigateToDetailScreen() {
        let detailVc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileDetailVC") as! ProfileDetailVC
        self.navigationController?.pushViewController(detailVc, animated: true)
    }

}

