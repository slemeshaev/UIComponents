//
//  MainViewController.swift
//  UIComponents
//
//  Created by Stanislav Lemeshaev on 25.08.2023.
//  Copyright © 2023 slemeshaev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    private let reuseId = "MainViewCell"
    
    // MARK: - IBOutlets
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Properties
    private let mainItems = ["UI-components", "Animations"]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBarWithTitle("Главная")
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainItems.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: reuseId, for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        
        let item = mainItems[indexPath.row]
        cell.configure(with: item)
        
        return cell
    }
}
