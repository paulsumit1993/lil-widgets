import SwiftUI
import PlaygroundSupport

struct Weather: View {
    var body: some View {
        VStack(spacing: 8) {
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [
                            Color(UIColor.systemYellow),
                            Color(UIColor.systemOrange)
                        ]), startPoint: .top, endPoint: .bottom))
                .frame(width: 48, height: 48)
            
            VStack {
                Text("72°")
                    .font(.system(.title)).fontWeight(.bold)
                    .foregroundColor(Color(UIColor.label))
                Text("Sunny")
                    .font(.system(.callout))
                    .foregroundColor(Color(UIColor.lightGray))
            }
        }
        .frame(width: 155, height: 155)
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(24)
        .padding()
    }
}

PlaygroundPage.current.setLiveView(Weather())
