//
//  ProfileHeaderVC.swift
//  ReusableComponent
//
//  Created by Aman Aggarwal on 26/04/18.
//  Copyright © 2018 Aman Aggarwal. All rights reserved.
//

import UIKit

protocol ProfileHeaderVcDelegate {
    func nameOfUser(_ name:String)
}
class ProfileHeaderVC: UIViewController {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var btnEditProfile: UIButton!
    
    var delegate:ProfileHeaderVcDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         NotificationCenter.default.addObserver(self, selector: #selector(profileChanged(_ :)), name: Notification.Name("PROFILECHANGED"), object: nil)
        imgAvatar.backgroundColor = UIColor.white
        imgAvatar.layer.cornerRadius = imgAvatar.frame.size.width/2
        
        btnEditProfile.backgroundColor = UIColor.white
        btnEditProfile.layer.cornerRadius = 5.0
    }
    
    @objc func profileChanged(_ notif: Notification) {
        if let userInfo = notif.userInfo as? Dictionary<String, Any> {
            if let name = userInfo["name"] as? String {
                print("name == \(name)")
                self.lblUserName.text = name
            }
        }
    }
    @IBAction func editProfile(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let editProfileVc = storyBoard.instantiateViewController(withIdentifier: "EditProfileVC") as! EditProfileVC
        self.navigationController?.pushViewController(editProfileVc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showName(_ sender: UIButton) {
        self.delegate?.nameOfUser(self.lblUserName.text!)
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
