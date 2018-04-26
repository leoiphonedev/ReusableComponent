//
//  ViewController.swift
//  ReusableComponent
//
//  Created by Aman Aggarwal on 25/04/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addProfileHeaderTo(vc: self)
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

    @IBAction func navigateToDetailScreen() {
        let detailVc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileDetailVC") as! ProfileDetailVC
        self.navigationController?.pushViewController(detailVc, animated: true)
    }

}

