import Foundation


@_functionBuilder
public struct HTMLBuilder {
  public static func buildExpression(_ exp: Node) -> [Node] {
    return [exp]
  }
  
  
  public static func buildExpression(_ exp: String) -> [Node] {
    return [Text(exp)]
  }
  
  
  public static func buildBlock(_ children: [Node]) -> [Node] {
    return children
  }
  
  
  public static func buildBlock(_ children: [Node]...) -> [Node] {
    return children.flatMap { $0 }
  }


  public static func buildOptional(_ children: [Node]?) -> [Node] {
    return children ?? []
  }
  
  
  public static func buildEither(first: [Node]) -> [Node] {
    return first
  }
  

  public static func buildEither(second: [Node]) -> [Node] {
    return second
  }

}
