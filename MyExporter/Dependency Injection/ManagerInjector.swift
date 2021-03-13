//
//  ManagerInjector.swift
//  MyExporter
//
//  Created by Burri on 2021-03-13.
//  Copyright © 2021 burri. All rights reserved.
//

import Foundation
import MyMessageExporter

struct ManagerInjector {
    
    static var exportManager: MessageExportManageable = MessageExportManager(types: [])
}
