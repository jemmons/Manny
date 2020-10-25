import Foundation


public enum Attribute {
  case `class`(String)
  case id(String)
  case href(String)
  case type(String)
  case disabled
  case data(String, String)
  case src(String)
  case alt(String)
  
  
  func render() -> String {
    switch self {
    case .class(let s): return "class=\"\(s)\""
    case .id(let s): return "id=\"\(s)\""
    case .href(let s): return "href=\"\(s)\""
    case .type(let s): return "type=\"\(s)\""
    case .disabled: return "disabled"
    case let .data(name, value): return "data-\(name)=\"\(value)\""
    case .src(let s): return "src=\"\(s)\""
    case .alt(let s): return "alt=\"\(s)\""
    }
  }
}
