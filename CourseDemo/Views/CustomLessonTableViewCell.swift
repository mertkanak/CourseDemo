//
//  CustomLessonTableViewCell.swift
//  CourseDemo
//
//  Created by mert Kanak on 22.12.2022.
//

import UIKit

class CustomLessonTableViewCell: UITableViewCell {

  
    static let identifier = "CustomLessonTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .link
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
