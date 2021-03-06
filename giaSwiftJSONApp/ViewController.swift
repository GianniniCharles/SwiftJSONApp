//
//  ViewController.swift
//  giaSwiftJSONApp
//
//  Created by Giannini Charles on 9/15/18.
//  Copyright © 2018 fortheFuture. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    final let url = URL(string: "https://swiftjsonapi.herokuapp.com/api/item/allitems")
    var items:Any = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
    }
    

    func downloadJson() {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("something is wrong")
                return
            }
            print("downloaded")
            do
            {
                let decoder = JSONDecoder()
                let downloadedItems   = try decoder.decode([Item].self,from: data)
                DispatchQueue.main.async() {
                    items = downloadedItems

                }
                print(downloadedItems[0].title)
            } catch {
                print("something wrong after downloaded")
            }
        }.resume()
        
      }
    }






















