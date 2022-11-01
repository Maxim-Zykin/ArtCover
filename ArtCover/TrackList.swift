//
//  TrackList.swift
//  ArtCover
//
//  Created by Максим Зыкин on 01.11.2022.
//

import UIKit

class TrackList: UITableViewController {
    
    let imageNameArray = ["The Theorist - Lovely",
                          "Inossi - Somewhere",
                          "Океан Ельзи - Обійми",
                          "Alan Walker & ISÁK - Sorry (Albert Vishi Remix)",
                          "OneRepublic - Good Life",
                          "Jnr Choi & Sam Tompkins - TO THE MOON",
                          "Otnicka - Where Are You",
                          "David Guetta & Sia - Flames",
                          "Gustavo Bravetti - Babel"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Titel", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0

        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailVC
                detailsVC.trackTitle = imageNameArray[indexPath.row]
            }
        }
    }


}
