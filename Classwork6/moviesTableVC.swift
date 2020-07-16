//
//  moviesTableVC.swift
//  Classwork6
//
//  Created by Jafar AlHasan on 7/16/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class moviesTableVC: UITableViewController {
    
    let movie = moviess().MarvelMovieData

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let movies = movie[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        
    
        cell.textLabel?.text=movies.movieName
        return cell
    }
}
