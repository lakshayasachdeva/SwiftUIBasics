//
//  TextPractice.swift
//  PracticingSwiftUI
//
//  Created by Lakshaya Sachdeva on 30/08/24.
//

import SwiftUI

struct TextPractice: View {
    var body: some View {
        Text("Some random text goes here. Some random big text goes here... Some random text goes here. Some random big text goes here...")
        // text here is localized by default. if we don't want it to be localized means we want to show static text then use verbatim
        //Text(verbatim: "some static text goes here..")
        
//            .font(.largeTitle)   // size by default size given by iOS
            //.fontWeight(.medium)  // thickness
//            .foregroundStyle(.indigo)
//            .bold()
//            .strikethrough(true, color: Color.red)
//            .underline(true, color: Color.yellow)
//            .italic()
            .font(.system(size: 24, weight: .medium, design: .serif))  // another way of setting font
        // downside of this method is that it will remain 24 whereas above way of setting font will make it bigger, smaller according to phone's settings.
        
            .kerning(1)  // to set letter spacing
            .baselineOffset(10)  // line spacing
            .multilineTextAlignment(.trailing)  // to set alignment of multiple lines.
        // will not work for single line..
            .frame(width: 200, height: 100, alignment: .trailing)
            .minimumScaleFactor(0.2)  // scales down the font minimum to 50% of main font given to set within the frame...
    }
}

#Preview {
    TextPractice()
}
