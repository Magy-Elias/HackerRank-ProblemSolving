import UIKit
import Foundation

func timeConversion(s: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    let date = dateFormatter.date(from: s)
    
    dateFormatter.dateFormat = "HH:mm:ss"
    if let date = date {
        let date24 = dateFormatter.string(from: date)
        return date24
    }
    return ""
}

print(timeConversion(s: "07:05:45PM"))
