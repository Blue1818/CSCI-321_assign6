//
//  detailView.swift
//  assign6
//
//  Created by Leo Lopez and Dale Westberg on 5/4/22.
//

import SwiftUI

struct detailView: View {

    var president: PresViewModel

    //placeholder vars
    @State private var numberPlaceHolder: Int = 40;
    @State private var bottomPad: CGFloat = 5;
    @State private var startDate: String = "StartDate";
    @State private var endDate: String = "EndDate";
    @State private var partyName: String = "placeholderParty";

    
    //detail view

    //number formattor for ordinal
    let ordinalFormatter: NumberFormatter = {
        let ordinalFormatter = NumberFormatter()
        ordinalFormatter.numberStyle = .ordinal
        return ordinalFormatter
    }()

    //Back button in the top right hand corner.

    var body: some View {
        VStack {
            
            
            Spacer()
            
            Group
            {
            
            //Title Text Distplaying the president's full name
            Text("\(president.name)")
                .font(.title)
                .bold()
                //.padding(.bottom, bottomPad)

            Spacer()
            
            //Text showing => numPresident+suffix+" President of the United States"
            Text("\(ordinalFormatter.string(from: NSNumber(value: president.number))!) President of the United States")
                .bold()
                //.padding(.bottom, bottomPad)
            
            Spacer()

            //Sub-title Text showing "("+DateFormat(startDate)+")"
            Text("(\(president.start_Date) to \(president.end_Date))")
                .font(.subheadline)
                .italic()
                //.padding(.bottom, bottomPad)
            }
            
            Spacer()

            //picture of the president (use seal as a placeholder)
            Image("seal")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            
            Spacer()
            
            Group
            {
            

            //Bold text "Nickname"
            Text("Nickname")
                .bold()
                //.padding(.bottom, bottomPad)
            
            Spacer()

            //multi line Text distplaying nicknames
            //with a fixed width that wraps around to multiple lines
            Text("\(president.nickname)")
                .frame(width: 250, height: 50)
                //.padding(.bottom, bottomPad)
                
            Spacer()

            //Bold text "Political Party"
            Text("Political Party")
                .bold()
                //.padding(.bottom, bottomPad)
            
            Spacer()

            //Text displaying Political party
            Text("\(president.political_Party)")
                //.padding(.bottom, bottomPad)
                
            }
            
            Spacer()

        }
    }
        
}