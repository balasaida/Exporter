//
//  ItemStackable.swift
//  MyExporter
//
//  Created by Burri on 2021-03-13.
//  Copyright © 2021 burri. All rights reserved.
//

import Foundation

protocol ItemStackable {
    
    associatedtype StackableItem
    
    /// An array of items being stacked in UIStackView
    var stackableItems: [StackableItem]! { get }
}

