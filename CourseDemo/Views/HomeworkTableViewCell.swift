//
//  HomeworkTableViewCell.swift
//  CourseDemo
//
//  Created by mert Kanak on 22.12.2022.
//

import UIKit

class HomeworkTableViewCell: UITableViewCell {

    static let identifier = "HomeworkTableViewCell"

    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(timeLabel)
        
        configureConstraints()
    }
    
    
    func configureConstraints() {
        
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20)
        ]
        
        let timeLabelConstraints = [
            timeLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 10),
            timeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor , constant: 22)
        ]
        
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(timeLabelConstraints)
    }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
