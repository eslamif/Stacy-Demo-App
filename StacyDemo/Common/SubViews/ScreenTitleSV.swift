//
//  ScreenTitleSV.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/13/21.
//

import SwiftUI

struct ScreenTitleSV: View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.title)
                .padding(.bottom, 30)
                .padding(.leading, 20)
            Spacer()
        }
    }
}

struct ScreenTitleSV_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTitleSV("Hello World")
    }
}
