//
//  MockDataLoading.swift
//  SearrchResultsControllerTests
//
//  Created by Tobi Kuyoro on 23/03/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import iTunes_Search

class MockDataLoader: NetworkDataLoader {
   let data: Data?
   let resposne: URLResponse?
   let error: Error?
   
   internal init(data: Data?, response: URLResponse?, error: Error?) {
      self.data = data
      self.resposne = response
      self.error = error
   }
   
   func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.005) {
         completion(self.data, self.resposne, self.error)
      }
   }
}
