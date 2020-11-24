//
//  ContentView.swift
//  WeSplit
//
//  Created by Burri, Luke on 2020-11-23.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPersentages = [0, 10, 15, 20, 25,]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPersentages[tipPercentage])
        return 0
        
        let stringValue = "0.5"
        let doubleValue = Double(stringValue)
        let  orderAmount = Double(checkAmount) ?? 0
        
    }
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header: Text("how much tip do you want to leave?")) {
                    
                    Picker ("tip percentage", selection: $tipPercentage){
                        ForEach(0..<tipPersentages.count) {
                            Text ("\(self.tipPersentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section{
                    Text ("$\(checkAmount)")
                }
            }
            .navigationBarTitle("WeSpit")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
