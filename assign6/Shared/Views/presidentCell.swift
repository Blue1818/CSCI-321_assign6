//
//  presidentCell.swift
//  assign6
//
//  Created by Leo Lopez and Dale Westberg on 5/4/22.
//

import SwiftUI

struct presidentCell: View {
    
    let president: PresViewModel
    
    var body: some View {
        HStack {

            
            VStack(alignment: .leading) {
                Text(president.name)
                    .font(.title2)
                    .bold()

                Text(president.political_Party)
            }
        }
    }
}
