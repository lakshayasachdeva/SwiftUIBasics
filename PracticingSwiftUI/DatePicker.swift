//
//  DatePicker.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 04/09/24.
//

import SwiftUI

struct DatePickerDemo: View {
    @State var selectedDate: Date = .now
    let startingDate = Calendar.current.date(from: DateComponents(year: 2018))!
    let endingDate = Calendar.current.date(from: DateComponents(year: 2024))!

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        
        VStack {
            Text("Selected date:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
                .bold()
            
            
            //        DatePicker(
            //            "Select a data",
            //            selection: $selectedDate)
            //        .tint(.red)
            //        .datePickerStyle(
            //            CompactDatePickerStyle()
            //            //GraphicalDatePickerStyle()
            //            //WheelDatePickerStyle()
            //        )   // default
            
            
            // to show only particular component in this case hour and minute
            //        DatePicker(
            //            "Select a date",
            //            selection: $selectedDate,
            //            displayedComponents: [.hourAndMinute]
            //        )
            
            
            // to set a date range...
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
        }
    }
}

#Preview {
    DatePickerDemo()
}
