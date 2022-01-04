//
//  ContentView.swift
//  SimpleClock
//
//  Created by Jinho Kim on 2021/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var isDark = false
    var body: some View {
        
        NavigationView {
            Home(isDark: $isDark)
                .navigationBarHidden(true)
                .preferredColorScheme(isDark ? .dark : .light)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

struct Home : View {
    
    @Binding var isDark : Bool
    @state var date = Date()
    var body: some View {
        VStack{
            HStack {
                Text("Clock")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                Button(action: {isDark.toggle()}) {
                    Image(systemName: isDark ? "sun.min.fill" : "moon.fill")
                        .font(.system(size: 22))
                        .foregroundColor(isDark ? .black : .white)
                        .padding(20)
                        .background(Color.primary)
                        .clipShape(Circle())
                }
            }
            Spacer(minLength: 0)
            VStack {
                Text(getTime())
                    .font(.system(size: 45))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(100)
            }
            
        }
        
        VStack{
            Text("\(timeString(date: date))")
        }
    func getTime()->String {
        let nowDate = Date()
        let format = DateFormatter()
        format.dateFormat = "HH:mm:ss"
        
        return format.string(from: nowDate)
        
        var timeFormat: DateFormatter {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss"
            return formatter
        }
        
        func timeString(date: Date) -> String {
            let time = timeFormat.string(from: date)
            return time
            }
        }
    }
}

struct Time {
    var sec : Int
    var min : Int
    var hour : Int
    let timer: Text.DateStyle
}
