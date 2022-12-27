//
//  HomeworksViewController.swift
//  CourseDemo
//
//  Created by mert Kanak on 21.12.2022.
//

import UIKit

class HomeworksViewController: UIViewController {
    
    struct homework {
        let homeworkName: String
        let dueTime: String
    }
    
    let homeworks: [homework] = [
        homework(homeworkName: "Signal&Systems", dueTime: "11.20.2022"),
        homework(homeworkName: "DesignAlgo", dueTime: "12.22.2022"),
        homework(homeworkName: "Messi", dueTime: "10.10.2010")
    ]
    
    let homeworkTableView = {
        let table = UITableView()
        table.register(HomeworkTableViewCell.self, forCellReuseIdentifier: HomeworkTableViewCell.identifier)
        table.allowsSelection = false
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        view.addSubview(homeworkTableView)
        homeworkTableView.delegate = self
        homeworkTableView.dataSource = self
        title = "HomeWorks"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeworkTableView.frame = view.bounds
        
    }
    
    
}


extension HomeworksViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeworks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeworkTableViewCell.identifier, for: indexPath) as? HomeworkTableViewCell else {
            return UITableViewCell()
        }
        
        cell.titleLabel.text = homeworks[indexPath.row].homeworkName
        cell.timeLabel.text = homeworks[indexPath.row].dueTime
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
}
