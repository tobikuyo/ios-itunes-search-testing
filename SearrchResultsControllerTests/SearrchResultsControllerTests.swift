//
//  SearrchResultsControllerTests.swift
//  SearrchResultsControllerTests
//
//  Created by Tobi Kuyoro on 23/03/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import iTunes_Search

/*
 
 - Does decoding work?
 - Does decoding fail when given bad data?
 - Does it build the correct URL?
 - Does it build the correct URLRequest?
 - Are the search results saved properly?
 - Is the completion handler called when data is good?
 - Is the completion handler called when data is bad?
 - Is the completion handler called when networking fails?
 
 */

class SearrchResultsControllerTests: XCTestCase {

   func testForSomeResults() {
      let controller = SearchResultController()
      let expectation = self.expectation(description: "Wait for results")
      
      controller.performSearch(for: "GarageBand", resultType: .software) {
//         XCTFail()
         expectation.fulfill()
      }
      
      wait(for: [expectation], timeout: 5)
   }
}
