import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import Testing
import RegexWithDescription

nonisolated(unsafe) let utf8or16or32EncodingPattern =
    RegexWith3GroupsAndDescription(
        #regexWith3GroupsAndDescription(#"encoding=['"](utf|UTF)-?(8|16|32)['"]"#)
    )

@Suite struct RegexWithDescriptionTests {
    
    @Test func fromREADME() throws {
        
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
    
    @Test func test1() throws {
        
        #expect(utf8or16or32EncodingPattern.description == #"encoding=['"](utf|UTF)-?(8|16|32)['"]"#)
        
        do {
            let isUTF8or16or32 = #"<?xml version="1.0" encoding="utf-8"?>"#.contains(utf8or16or32EncodingPattern.regex)
            #expect(isUTF8or16or32 == true)
        }
        
        do {
            let isUTF8or16or32 = #"<?xml version="1.0" encoding="ascii"?>"#.contains(utf8or16or32EncodingPattern.regex)
            #expect(isUTF8or16or32 == false)
        }
        
        do {
            var text = #"encoding="utf-8" encoding="ascii" encoding="utf-8""#
            text.replace(utf8or16or32EncodingPattern.regex, with: #"encoding="ascii""#)
            #expect(text == #"encoding="ascii" encoding="ascii" encoding="ascii""#)
        }
        
        do {
            let text = #"encoding="utf-8" encoding="ascii" encoding="utf-16""#
            let matchInfo = text.matches(of: utf8or16or32EncodingPattern.regex).map{ $0.output.0 }.joined(separator: "\n")
            #expect(matchInfo == """
                encoding="utf-8"
                encoding="utf-16"
                """)
        }
        
    }
    
}
