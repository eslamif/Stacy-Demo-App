//
//  Titles.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/13/21.
//

import SwiftUI

struct ScreenTitle: View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        HStack {
            //Title
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
