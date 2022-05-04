//
//  presidentsModel.swift
//  assign6
//
//  Created by Leo Lopez and Dale Westberg on 5/4/22.
//

import Foundation


struct presidentsModel: Decodable {
    var Name: String
    var Number: Int
    var Start_Date: String
    var End_Date: String
    var Nickname: String
    var Political_Party: String
    
    private enum CodingKeys: String, CodingKey {
        case Start_Date = "Start Date"
        case End_Date = "End Date"
        case Political_Party = "Political Party"
        case Name = "Name"
        case Nickname = "Nickname"
        case Number = "Number"
    }
     
}