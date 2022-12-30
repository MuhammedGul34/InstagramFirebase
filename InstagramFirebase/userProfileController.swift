//
//  userProfileController.swift
//  InstagramFirebase
//
//  Created by Muhammed Gül on 30.12.2022.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase


class userProfileController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        
        fetchUSer()
        
    }
    fileprivate func fetchUSer() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { snapshot in
            let dictionary = snapshot.value as? [String: Any]
            let username = dictionary?["username"] as? String
            self.navigationItem.title = username
            
        }, withCancel: { err in
            print("failed to fetch user:", err)
        })

    }
}
