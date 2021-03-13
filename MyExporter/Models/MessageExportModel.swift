//
//  MessageExportModel.swift
//  MyExporter
//
//  Created by Burri on 2021-03-13.
//  Copyright © 2021 burri. All rights reserved.
//

import Foundation

private enum MessageDetails: String {
    
    case userId = "Bala"
    case commentMessage = "This is a test message"
    case annotationColor = "Red"
    case annotationMessage = "Test annotation"
}

struct MessageExportModel {}

// MARK: - Item Stackable
extension MessageExportModel: ItemStackable {
    
    enum StackableItem {
        case annotationItem
        case commentItem
    }
    
    var stackableItems: [MessageExportModel.StackableItem]! {
        var items: [StackableItem] = []
        items.append(.annotationItem)
        items.append(.commentItem)
        return items
    }
}

// MARK: - ManagerInjectable
extension MessageExportModel: ManagerInjectable {
    
    func exportComment() {
        messageExportManager.export(message: .comment(userId: MessageDetails.userId.rawValue, message: MessageDetails.commentMessage.rawValue))
    }
    
    func exportAnnotation() {
        messageExportManager.export(message: .annotation(userId: MessageDetails.userId.rawValue, color: MessageDetails.annotationColor.rawValue, image: Data(), message: MessageDetails.annotationMessage.rawValue))
    }
}
