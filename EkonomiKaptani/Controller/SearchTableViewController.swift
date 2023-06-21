//
//  ViewController.swift
//  EkonomiKaptani
//
//  Created by Onur Sir on 21.06.2023.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    
    private lazy var searchController : UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false // arama yapılırken arka plan kararmasın.
        sc.searchBar.placeholder = "Lütfen bir şirket ismi veya sembol girin."
        sc.searchBar.autocapitalizationType = .allCharacters // tüm karakterler büyük girilsin.
        
        return sc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        setupNavigationBar()
     }
    
    
    private func setupNavigationBar() {
        navigationItem.searchController = searchController
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        return cell
    }


}

extension SearchTableViewController: UISearchResultsUpdating,UISearchControllerDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
}

