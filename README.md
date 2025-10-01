# RegexWithDescription

This macro makes is possible to have both a regex built from a literal regex expression and the original regex formulation as text without repeating the regex formulation in the code.

Example:

```swift
import RegexWithDescription

nonisolated(unsafe) let utf8or16or32EncodingPattern =
    RegexWith3GroupsAndDescription(
        #regexWith3GroupsAndDescription(#"encoding=['"](utf|UTF)-?(8|16|32)['"]"#)
    )

func test() {
    
    print(utf8or16or32EncodingPattern)
    // prints: encoding=['"](utf|UTF)-?(8|16|32)['"]
    
    print(
        #"<?xml version="1.0" encoding="utf-8"?>"#
            .contains(utf8or16or32EncodingPattern.regex)
    )
    // prints: true
    
    print(
        #"<?xml version="1.0" encoding="ascii"?>"#
            .contains(utf8or16or32EncodingPattern.regex)
    )
    // prints: false
    
}
```
