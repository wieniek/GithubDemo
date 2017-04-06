//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Laura on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
   
    var repos: GithubRepo? {
        didSet {
            nameLabel.text = nil
            starsLabel.text = nil
            forksLabel.text = nil
            ownerLabel.text = nil
            descriptionLabel.text = nil
            avatarImageView.image = nil
            
            if let repos = repos {
                nameLabel.text = repos.name
                starsLabel.text = String(describing: repos.stars!)
                forksLabel.text = String(describing: repos.forks!)
                ownerLabel.text = repos.ownerHandle
                descriptionLabel.text = repos.repoDescription
                if let url = repos.ownerAvatarURL {
                    let avatarUrl = URL(string: url)
                    avatarImageView.setImageWith(avatarUrl!)
                }
                
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
