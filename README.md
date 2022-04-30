## SomethingLikeSwiftUIParts

This is my test app Swift UI. You can refer to it if you needed.

## Contents
View Extentions
* Accordion
* Banner

## Platform

* iOS v15+

## How do I add it to my Xcode project?

#### Swift Package Manager

`https://github.com/3colorr/SomethingLikeSwiftUIParts.git`

## Usage

```swift
VStack {
    // Usage Accordion
    Button(action: { isPresentAccordion.toggle() }) {
        Text("Accordion")
    }
    .likeAccordion(isPresent: $isPresentAccordion, body: Text("Hello Accordion"))

    // Usage Accordion : others
    Text("Accordion")
        .likeAccordion(isPresent: $isPresentAccordion1, body: Text("Hello Accordion"), closedImage: Image(systemName: "circle"), openedImage: Image(systemName: "circle.fill"))

    // Usage Banner
    Button(action: { isPresentBanner.toggle() }) {
        Text("Banner")
    }
}
// Usage Banner
.likeBanner(isPresent: $isPresentBanner, body: "Hello Banner")
// Usage Banner : others
//.likeBanner(isPresent: $isPresentBanner, body: "Hello Banner", shadowRadius: 5, type: .linear, direction: .bottom, duration: 5)
```
