//import SwiftUI
//
//    
//  
//var body: some View {
//    List {
//        ForEach(months, id: \.self) { month in
//            Text("Month")
//        }
//    }
//    
//    
//    struct CalendarDay {
//        var date: Date
//        var dayOfWeek: Int
//        var events: [Event]
//    }
//    
//    struct CalendarWeek {
//        var days: [CalendarDay]
//    }
//    
//    struct CalendarMonth {
//        var weeks: [CalendarWeek]
//    }
//    
//    struct CalendarView: View {
//        var months: [CalendarMonth]
//    }
//    
//    
//    struct DayDetailView: View {
//        var day: CalendarDay
//        
//        var body: some View {
//            Text("Day Detail")
//        }
//    }
//    
//    struct Event {
//        var title: String
//        var description: String
//    }
//}
//struct SwiftUIView: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                CalendarView(months: [])
//            }
//            .navigationBarTitle(Text("Calendar"))
//        }
//    }
//}
