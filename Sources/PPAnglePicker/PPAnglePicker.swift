
import SwiftUI

public struct PPAnglePickerView: View {
    @State private var buttons: Bool = true
    @State private var angleState: String = "0.0"
    
    @Binding var degrees: Double
    
    public var body: some View {
        ZStack {
            
            if buttons {
                ForEach(0...7, id: \.self) { value in
                    Button(action: {
                        withAnimation(.bouncy) {
                            degrees = Double(45 * value)
                            angleState = String(degrees)
                        }
                    }) {
                        Rectangle()
                            .foregroundStyle(.clear)
                            .clipShape(Rectangle())
                            .frame(width: 60, height: 20)
                            .overlay {
                                Circle()
                                    .trim(
                                        from: 4/8 + 0.02,
                                        to:  5/8 - 0.02
                                    )
                                    .stroke(
                                        style: StrokeStyle(
                                            lineWidth: 10, lineCap: .round
                                        )
                                    )
                                    .frame(width: 200, height: 200)
                                    .rotationEffect(Angle(degrees: 67.5))
                                    .offset(y: 100)
                                    .allowsHitTesting(false)
                            }
                    }
                    .offset(y: -100)
                    .rotationEffect(Angle(degrees: 45 * Double(value)))
                }
                .transition(.opacity)
                
            } else {
                Circle()
                    .stroke(
                        style: StrokeStyle(
                            lineWidth: 10, lineCap: .round
                        )
                    )
                    .frame(width: 200, height: 200)
                    .foregroundStyle(Color.accentColor)
                    .transition(.opacity)
            }
            
            VStack(spacing: 10) {
                Text(angleState)
                    .font(.largeTitle.bold())
                    .contentTransition(.numericText(value: degrees))
                
                Button(action: { withAnimation(.bouncy) { buttons.toggle() } }) {
                    Image(systemName: "slider.horizontal.3")
                        .imageScale(.large)
                }
            }
        }
        .padding(100)
    }
}
