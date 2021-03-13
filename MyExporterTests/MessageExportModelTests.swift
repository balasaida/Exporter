//
//  MessageExportModelTests.swift
//  MyExporterTests
//
//  Created by Burri on 2021-03-13.
//  Copyright © 2021 burri. All rights reserved.
//

import XCTest
@testable import MyExporter

class MessageExportModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testStackbleItems() {
        // Given the message export model
        let model = MessageExportModel()

        var items: [MessageExportModel.StackableItem] = model.stackableItems
        
        // Then the stackable items count should be equal to 2
        XCTAssertEqual(items.count, 2)
        
        // Then the first item should be the annoation item
        XCTAssertEqual(items[0], .annotationItem)
        
        // Then the second item should be the comment item
        XCTAssertEqual(items[0], .commentItem)
    }
}

extension MessageExportModel.StackableItem: Equatable {
    
    public static func == (lhs: MessageExportModel.StackableItem, rhs: MessageExportModel.StackableItem) -> Bool {
        switch (lhs, rhs) {
        case (.annotationItem, .annotationItem), (.commentItem, .commentItem):
            return true
        default:
            return false
        }
    }
}
