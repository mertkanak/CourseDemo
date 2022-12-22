//
//  CustomLessonTableViewCell.swift
//  CourseDemo
//
//  Created by mert Kanak on 22.12.2022.
//

import UIKit

class CustomLessonTableViewCell: UITableViewCell {

  
    static let identifier = "CustomLessonTableViewCell"
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    let rightLabel = UILabel()
    let homeworkButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .link
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(rightLabel)
    
        configureLayout()
        
    }
    
    func configureLayout() {
    
        let labelPadding: CGFloat = 8
        
        titleLabel.frame = CGRect(x: labelPadding, y: labelPadding, width: 200, height: 21)
        subtitleLabel.frame = CGRect(x: labelPadding, y: titleLabel.frame.maxY, width: 200, height: 21)
        rightLabel.frame = CGRect(x: contentView.frame.maxX - titleLabel.frame.maxY - labelPadding, y: labelPadding, width: 200, height: 21)
       
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
