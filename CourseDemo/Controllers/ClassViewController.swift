//
//  TeachersViewController.swift
//  CourseDemo
//
//  Created by mert Kanak on 21.12.2022.
//

import UIKit

class ClassViewController: UIViewController {
    
    
    let departmans : [String] = ["Computer Engineering", "Electrical Engineering","Department Three","Departmant Four", "Department Five"]
    
    struct lesson {
        let courseName: String
        let courseCode: String
    }
    let lessons : [lesson] = [
        lesson(courseName: "Internet Of Things", courseCode: "Ceng465"),
        lesson(courseName: "Signal and Systems", courseCode: "Ceng307"),
        lesson(courseName: "Design And Analysis of Algorithm", courseCode: "Ceng303"),
        lesson(courseName: "Operating System", courseCode: "Ceng305"),
        lesson(courseName: "Database Management", courseCode: "Ceng303")
    ]
    
    private let classFeedTable = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CustomLessonTableViewCell.self, forCellReuseIdentifier: CustomLessonTableViewCell.identifier)
        table.allowsSelection = false 
        return table
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(classFeedTable)
        setupNavBar()
        
        
        classFeedTable.dataSource = self
        classFeedTable.delegate = self
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        classFeedTable.frame = view.bounds
    }
    
    func setupNavBar() {
        navigationItem.title = "Lessons"
    }
    
    
}

extension ClassViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return departmans[0]
        case 1:
            return departmans[1]
        case 2:
            return departmans[2]
        case 3:
            return departmans[3]
        case 4:
            return departmans[4]
        default:
            return "You have \(departmans.count) lessons"
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessons.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomLessonTableViewCell.identifier, for: indexPath) as? CustomLessonTableViewCell else {
            return UITableViewCell()
        }
        
        cell.titleLabel.text = lessons[indexPath.row].courseName
        cell.subtitleLabel.text = lessons[indexPath.row].courseCode
        cell.rightLabel.text = "HomeWork ✓"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}

