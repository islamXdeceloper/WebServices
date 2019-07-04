//
//  Strings-Extentions.swift
//  WebService
//
//  Created by Eslam Ahmed on 7/2/19.
//  Copyright © 2019 Eslam Ahmed. All rights reserved.
//

import UIKit

extension String {
    var trimmed: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
