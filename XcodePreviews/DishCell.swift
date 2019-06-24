//
//  DishCell.swift
//  XcodePreviews
//
//  Created by Antonakakis Nikolaos on 24.06.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import Foundation
import SwiftUI

struct DishCell: View {
    
    var body: some View {
        
        NavigationView {
        HStack {
            
            Image("e1")
            .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
        VStack(alignment: .leading) {
            Text("Filet Mignon")
            Text("$35")
            }
        }.padding(5)
        }
    }
}

#if DEBUG
struct DishCell_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            
            DishCell().colorScheme(.dark)
            
            DishCell().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraSmall)
            DishCell().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraLarge)
            DishCell().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
        }
    }
}
#endif
