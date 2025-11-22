//
//  DateHelper.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 22.11.25.
//

import Foundation

struct DateHelper {
    
    static func projectUpdateDate(inputDate: Date) -> String {
        
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMMM d, yyyy"
        return df.string(from: inputDate)
    }
}
