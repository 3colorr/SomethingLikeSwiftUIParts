## SomethingLikeSwiftUIParts

This is my test app Swift UI. You can refer to it if you needed.

## Contents
View Extentions
* Accordion

## Platform

* iOS v15+

## How do I add it to my Xcode project?

#### Swift Package Manager

`https://github.com/3colorr/SomethingLikeSwiftUIParts.git`

## Usage

```swift
Button(action: { isPresentAccordion1.toggle() }) {
    Text("Accordion1")
}
.likeAccordion(isPresent: $isPresentAccordion1, body: Text("content1"))

Text("Accordion2")
    .likeAccordion(isPresent: $isPresentAccordion2, body: Text("content2"), closedImage: Image(systemName: "circle"), openedImage: Image(systemName: "circle.fill"))
```
