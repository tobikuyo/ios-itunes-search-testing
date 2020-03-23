//
//  URLSession+NetworkDataLoader.swift
//  iTunes Search
//
//  Created by Tobi Kuyoro on 23/03/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
   func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
      dataTask(with: request, completionHandler: completion).resume()
   }
}
