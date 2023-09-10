//
//  File.swift
//  AlmoFireDemo
//
//  Created by Naved Khan on 10/05/23.
//

import Foundation
protocol Displayable {
    var titleLabelText: String { get  }
    var subtitleLabelText: String { get  }
    var item1: (label: String, value: String) { get  }

    var item2: (label: String, value: String) { get  }

    var item3: (label: String, value: String) { get  }

    var listTitle: String { get  }

    var listItems: [String] { get  }
}


//extension Film: Displayable {
//
//  var titleLabelText: String {
//    title
//  }
//
//  var subtitleLabelText: String {
//    "Episode \(String(id))"
//  }
//
//  var item1: (label: String, value: String) {
//    ("DIRECTOR", director)
//  }
//
//  var item2: (label: String, value: String) {
//    ("PRODUCER", producer)
//  }
//
//  var item3: (label: String, value: String) {
//    ("RELEASE DATE", releaseDate)
//  }
//
//  var listTitle: String {
//    "STARSHIPS"
//  }
//
//  var listItems: [String] {
//    starships
//  }
//}
