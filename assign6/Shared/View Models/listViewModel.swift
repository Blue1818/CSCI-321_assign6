//
//  listViewModel.swift
//  assign6
//
//  Created by Leo Lopez and Dale Westberg on 5/4/22.
//

import Foundation

@MainActor
class listViewModel: ObservableObject {
    @Published var presArray: [PresViewModel] = []
    
    
    func loadPropertyListData() async{
        
        guard let path = Bundle.main.path(forResource: "presidents", ofType: "plist"), let xml = FileManager.default.contents(atPath: path) else {
            fatalError("Unable to decode property list states.plist")
        }
        do {
            var presArray = try PropertyListDecoder().decode([presidentsModel].self, from: xml)
            
            presArray.sort {
                $0.Number < $1.Number
            }
            self.presArray = presArray.map(PresViewModel.init)
        } catch {
            fatalError("Unable to decode property list states.plist")
        }
    }
}

struct PresViewModel {
        fileprivate var president: presidentsModel
        
        var name: String {
            return president.Name
        }
        
        var number: Int {
            return president.Number
        }
    
    var ordinalNumber: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        return formatter.string(from: NSNumber(value: president.Number)) ?? ""
    }
        
        var start_Date: String {
            return president.Start_Date
        }
        
        var end_Date: String {
            return president.End_Date
        }
    
        var nickname: String {
            return president.Nickname
        }
        
        var political_Party: String {
            return president.Political_Party
        }
        
    }
    