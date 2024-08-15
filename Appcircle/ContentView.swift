//
//  ContentView.swift
//  Appcircle
//
//  Created by Mustafa on 29.12.2021.
//

import SwiftUI
import FizzBuzzKit

struct FizzBuzzView: View {
    var number: Int
    let fbkit = FizzBuzzKit()
    var body: some View {
        HStack {
            Text("Result: ")
            Text(fbkit.handle(number: number))
                .accessibilityIdentifier("result")
        }
    }
}

struct ContentView: View {
    @State var numberString: String = ""
    private var version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    
    var body: some View {

        VStack {
            Text("Appcircle")
            Image("Logo")
                .resizable()
                .frame(width: 64, height: 64)
        }
        .padding(.top, 32)
        
        Spacer()
        
        Text("Version: \(self.version ?? "")")
            .font(.headline)
            .padding(.top, 10)
            .padding(.bottom, 80)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
