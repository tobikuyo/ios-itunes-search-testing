//
//  MockJSON.swift
//  SearrchResultsControllerTests
//
//  Created by Tobi Kuyoro on 23/03/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

let goodResultData = """
{
  "resultCount": 2,
  "results": [
        {
          "trackName": "GarageBand",
          "artistName": "Apple",
        },
        {
          "trackName": "Garage Virtual Drumset Band",
          "artistName": "Nexogen Private Limited",
        }
    ]
}
""".data(using: .utf8)!

let badJSONData = """
{
  "resultCount": 2,
  "results": [
        {
          "trackName": "GarageBand",
          "artistName": "Apple",
        },
        
          "trackName": "Garage Virtual Drumset Band",
          "artistName": "Nexogen Private Limited",
        }
    ]
}
""".data(using: .utf8)!

let noResultsData = """
{
"resultCount": 0,
"results": []
}
""".data(using: .utf8)!
