//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Diana C on 2/14/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var forkImageView: UIImageView!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var repoDescriptionLabel: UILabel!
    @IBOutlet weak var ownerAvatarImageView: UIImageView!
    @IBOutlet weak var ownerHandleLabel: UILabel!
    @IBOutlet weak var repoNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
