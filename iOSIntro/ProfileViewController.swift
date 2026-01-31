//
//  ProfileViewController.swift
//  iOSIntro
//
//  Created by Fernando Prieto Alonso on 25/1/26.
//

import UIKit

class ProfileViewController: UIViewController {

    private static let profileName = "Fuji"
    private static let profilePicture = UIImage(named: "Fuji")
    private static let hiddenProfilePicture = UIImage(named: "Incognito")
    private static let phoneNumber = "+34 555"
    private static let hiddenPhoneNumber = "***"
    private static let hideButtonTitle = "Ocultar"
    private static let showButtonTitle = "Mostrar"

    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profilePictureView: UIImageView!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var hideButton: UIButton!
    
    private var isPhoneVisible: Bool! {
        willSet {
            profilePictureView.image = newValue
            ? ProfileViewController.profilePicture
            : ProfileViewController.hiddenProfilePicture
            
            phoneLabel.text = newValue 
            ? ProfileViewController.phoneNumber
            : ProfileViewController.hiddenPhoneNumber
            
            hideButton
                .setTitle(
                    newValue
                    ? ProfileViewController.hideButtonTitle
                    : ProfileViewController.showButtonTitle,
                    for: .normal
                )
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileNameLabel.text = ProfileViewController.profileName
        isPhoneVisible = true
    }
    
    @IBAction func onHideButtonClick(_ sender: UIButton) {
        isPhoneVisible.toggle()
    }
}
