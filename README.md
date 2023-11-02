# PPAnglePicker
With the PPAnglePicker you can enable your users to select angles (in degrees) quickly and easily.

---
### Implementation 
```swift
struct ContentView: View {
    @State var degrees: Double = 0.0

    var body: some View {
        PPAnglePickerView(degrees: $degrees)
    }
}
```
