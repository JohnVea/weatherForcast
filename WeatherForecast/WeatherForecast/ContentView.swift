//
//  ContentView.swift
//  WeatherForecast
//
//  Created by John Vea on 5/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ScrollView(.horizontal){
                HStack {
                    DayForecast(day: "Mon", isRainy:false, high:70, low:50)
                    
                    DayForecast(day: "Tue", isRainy:true, high:60, low:40)
                    
                    DayForecast(day: "Wed", isRainy:false, high:50, low:30)
                    
                    DayForecast(day: "Thur", isRainy:false, high:40, low:20)
                    
                    DayForecast(day: "Fri", isRainy:true, high:30, low:10)
                    
                    DayForecast(day: "Sat", isRainy:true, high:20, low:10)
                    
                    DayForecast(day: "Sun", isRainy:false, high:30, low:5)
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day:String
    let isRainy: Bool
    let high:Int
    let low:Int
    
    var iconName: String{
        if(isRainy){
            "cloud.rain.fill"
        }else{
            "sun.max.fill"
        }
        
    }
    
    var iconColor: Color{
        if(isRainy){
            Color.blue
        }else{
            Color.yellow
        }
        
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
