nonisolated(unsafe) public let utf8or16or32EncodingPattern = RegexWith3GroupsAndDescription(#regexWith3GroupsAndDescription(#"encoding=['\"](utf|UTF)-?(8|16|32)['\"]"#))

public func test1() throws {
        
    print(utf8or16or32EncodingPattern.description == #"encoding=['\"](utf|UTF)-?(8|16|32)['\"]"#)
    
    print(#"<?xml version="1.0" encoding="utf-8"?>"#.contains(utf8or16or32EncodingPattern.regex) == true) // true
    print(#"<?xml version="1.0" encoding="ascii"?>"#.contains(utf8or16or32EncodingPattern.regex) == false)  // true
}

@freestanding(expression)
public macro regexWith1GroupAndDescription(_ regexText: String) -> (Regex<(
    Substring // 1
)>,String) = #externalMacro(module: "RegexWithDescriptionMacros", type: "RegexWithDescription")

public struct RegexWith1GroupAndDescription {
    
    nonisolated(unsafe) public let regex: Regex<(Substring)>
    public let description: String
    
    public init(_ regexWithDescription: (regex: Regex<(Substring)>, description: String)) {
        self.regex = regexWithDescription.regex
        self.description = regexWithDescription.description
    }
}

@freestanding(expression)
public macro regexWith2GroupsAndDescription(_ regexText: String) -> (Regex<(
    Substring, // 1
    Substring  // 2
)>,String) = #externalMacro(module: "RegexWithDescriptionMacros", type: "RegexWithDescription")

public struct RegexWith2GroupsAndDescription {
    
    nonisolated(unsafe) public let regex: Regex<(Substring, Substring)>
    public let description: String
    
    public init(_ regexWithDescription: (regex: Regex<(Substring, Substring)>, description: String)) {
        self.regex = regexWithDescription.regex
        self.description = regexWithDescription.description
    }
}

@freestanding(expression)
public macro regexWith3GroupsAndDescription(_ regexText: String) -> (Regex<(
    Substring, // 1
    Substring, // 2
    Substring  // 3
)>,String) = #externalMacro(module: "RegexWithDescriptionMacros", type: "RegexWithDescription")

public struct RegexWith3GroupsAndDescription {
    
    nonisolated(unsafe) public let regex: Regex<(Substring, Substring, Substring)>
    public let description: String
    
    public init(_ regexWithDescription: (regex: Regex<(Substring, Substring, Substring)>, description: String)) {
        self.regex = regexWithDescription.regex
        self.description = regexWithDescription.description
    }
}

@freestanding(expression)
public macro regexWith4GroupsAndDescription(_ regexText: String) -> (Regex<(
    Substring, // 1
    Substring, // 2
    Substring, // 3
    Substring  // 4
)>,String) = #externalMacro(module: "RegexWithDescriptionMacros", type: "RegexWithDescription")

public struct RegexWith4GroupsAndDescription {
    
    nonisolated(unsafe) public let regex: Regex<(Substring, Substring, Substring, Substring)>
    public let description: String
    
    public init(_ regexWithDescription: (regex: Regex<(Substring, Substring, Substring, Substring)>, description: String)) {
        self.regex = regexWithDescription.regex
        self.description = regexWithDescription.description
    }
}

@freestanding(expression)
public macro regexWith5GroupsAndDescription(_ regexText: String) -> (Regex<(
    Substring, // 1
    Substring, // 2
    Substring, // 3
    Substring, // 4
    Substring  // 5
)>,String) = #externalMacro(module: "RegexWithDescriptionMacros", type: "RegexWithDescription")

public struct RegexWith5GroupsAndDescription {
    
    nonisolated(unsafe) public let regex: Regex<(Substring, Substring, Substring, Substring, Substring)>
    public let description: String
    
    public init(_ regexWithDescription: (regex: Regex<(Substring, Substring, Substring, Substring, Substring)>, description: String)) {
        self.regex = regexWithDescription.regex
        self.description = regexWithDescription.description
    }
}

@freestanding(expression)
public macro regexWith6GroupsAndDescription(_ regexText: String) -> (Regex<(
    Substring, // 1
    Substring, // 2
    Substring, // 3
    Substring, // 4
    Substring, // 5
    Substring  // 6
)>,String) = #externalMacro(module: "RegexWithDescriptionMacros", type: "RegexWithDescription")

public struct RegexWith6GroupsAndDescription {
    
    nonisolated(unsafe) public let regex: Regex<(Substring, Substring, Substring, Substring, Substring, Substring)>
    public let description: String
    
    public init(_ regexWithDescription: (regex: Regex<(Substring, Substring, Substring, Substring, Substring, Substring)>, description: String)) {
        self.regex = regexWithDescription.regex
        self.description = regexWithDescription.description
    }
}

@freestanding(expression)
public macro regexWith7GroupsAndDescription(_ regexText: String) -> (Regex<(
    Substring, // 1
    Substring, // 2
    Substring, // 3
    Substring, // 4
    Substring, // 5
    Substring, // 6
    Substring  // 7
)>,String) = #externalMacro(module: "RegexWithDescriptionMacros", type: "RegexWithDescription")

public struct RegexWith7GroupsAndDescription {
    
    nonisolated(unsafe) public let regex: Regex<(Substring, Substring, Substring, Substring, Substring, Substring, Substring)>
    public let description: String
    
    public init(_ regexWithDescription: (regex: Regex<(Substring, Substring, Substring, Substring, Substring, Substring, Substring)>, description: String)) {
        self.regex = regexWithDescription.regex
        self.description = regexWithDescription.description
    }
}
