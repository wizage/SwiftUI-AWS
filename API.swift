//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTalkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
    graphQLMap = ["id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var clientId: GraphQLID? {
    get {
      return graphQLMap["clientId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientId")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String {
    get {
      return graphQLMap["description"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var speakerName: String {
    get {
      return graphQLMap["speakerName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "speakerName")
    }
  }

  public var speakerBio: String {
    get {
      return graphQLMap["speakerBio"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "speakerBio")
    }
  }
}

public struct UpdateTalkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String? = nil, description: String? = nil, speakerName: String? = nil, speakerBio: String? = nil) {
    graphQLMap = ["id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var clientId: GraphQLID? {
    get {
      return graphQLMap["clientId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientId")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var speakerName: String? {
    get {
      return graphQLMap["speakerName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "speakerName")
    }
  }

  public var speakerBio: String? {
    get {
      return graphQLMap["speakerBio"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "speakerBio")
    }
  }
}

public struct DeleteTalkInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelTalkFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, clientId: ModelIDFilterInput? = nil, name: ModelStringFilterInput? = nil, description: ModelStringFilterInput? = nil, speakerName: ModelStringFilterInput? = nil, speakerBio: ModelStringFilterInput? = nil, and: [ModelTalkFilterInput?]? = nil, or: [ModelTalkFilterInput?]? = nil, not: ModelTalkFilterInput? = nil) {
    graphQLMap = ["id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var clientId: ModelIDFilterInput? {
    get {
      return graphQLMap["clientId"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientId")
    }
  }

  public var name: ModelStringFilterInput? {
    get {
      return graphQLMap["name"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: ModelStringFilterInput? {
    get {
      return graphQLMap["description"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var speakerName: ModelStringFilterInput? {
    get {
      return graphQLMap["speakerName"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "speakerName")
    }
  }

  public var speakerBio: ModelStringFilterInput? {
    get {
      return graphQLMap["speakerBio"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "speakerBio")
    }
  }

  public var and: [ModelTalkFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTalkFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTalkFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTalkFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTalkFilterInput? {
    get {
      return graphQLMap["not"] as! ModelTalkFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public final class CreateTalkMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTalk($input: CreateTalkInput!) {\n  createTalk(input: $input) {\n    __typename\n    id\n    clientId\n    name\n    description\n    speakerName\n    speakerBio\n  }\n}"

  public var input: CreateTalkInput

  public init(input: CreateTalkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTalk", arguments: ["input": GraphQLVariable("input")], type: .object(CreateTalk.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTalk: CreateTalk? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTalk": createTalk.flatMap { $0.snapshot }])
    }

    public var createTalk: CreateTalk? {
      get {
        return (snapshot["createTalk"] as? Snapshot).flatMap { CreateTalk(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTalk")
      }
    }

    public struct CreateTalk: GraphQLSelectionSet {
      public static let possibleTypes = ["Talk"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("clientId", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerBio", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
        self.init(snapshot: ["__typename": "Talk", "id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var clientId: GraphQLID? {
        get {
          return snapshot["clientId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "clientId")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var speakerName: String {
        get {
          return snapshot["speakerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerName")
        }
      }

      public var speakerBio: String {
        get {
          return snapshot["speakerBio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerBio")
        }
      }
    }
  }
}

public final class UpdateTalkMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTalk($input: UpdateTalkInput!) {\n  updateTalk(input: $input) {\n    __typename\n    id\n    clientId\n    name\n    description\n    speakerName\n    speakerBio\n  }\n}"

  public var input: UpdateTalkInput

  public init(input: UpdateTalkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTalk", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateTalk.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTalk: UpdateTalk? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTalk": updateTalk.flatMap { $0.snapshot }])
    }

    public var updateTalk: UpdateTalk? {
      get {
        return (snapshot["updateTalk"] as? Snapshot).flatMap { UpdateTalk(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTalk")
      }
    }

    public struct UpdateTalk: GraphQLSelectionSet {
      public static let possibleTypes = ["Talk"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("clientId", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerBio", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
        self.init(snapshot: ["__typename": "Talk", "id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var clientId: GraphQLID? {
        get {
          return snapshot["clientId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "clientId")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var speakerName: String {
        get {
          return snapshot["speakerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerName")
        }
      }

      public var speakerBio: String {
        get {
          return snapshot["speakerBio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerBio")
        }
      }
    }
  }
}

public final class DeleteTalkMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTalk($input: DeleteTalkInput!) {\n  deleteTalk(input: $input) {\n    __typename\n    id\n    clientId\n    name\n    description\n    speakerName\n    speakerBio\n  }\n}"

  public var input: DeleteTalkInput

  public init(input: DeleteTalkInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTalk", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteTalk.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTalk: DeleteTalk? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTalk": deleteTalk.flatMap { $0.snapshot }])
    }

    public var deleteTalk: DeleteTalk? {
      get {
        return (snapshot["deleteTalk"] as? Snapshot).flatMap { DeleteTalk(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTalk")
      }
    }

    public struct DeleteTalk: GraphQLSelectionSet {
      public static let possibleTypes = ["Talk"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("clientId", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerBio", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
        self.init(snapshot: ["__typename": "Talk", "id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var clientId: GraphQLID? {
        get {
          return snapshot["clientId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "clientId")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var speakerName: String {
        get {
          return snapshot["speakerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerName")
        }
      }

      public var speakerBio: String {
        get {
          return snapshot["speakerBio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerBio")
        }
      }
    }
  }
}

public final class GetTalkQuery: GraphQLQuery {
  public static let operationString =
    "query GetTalk($id: ID!) {\n  getTalk(id: $id) {\n    __typename\n    id\n    clientId\n    name\n    description\n    speakerName\n    speakerBio\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTalk", arguments: ["id": GraphQLVariable("id")], type: .object(GetTalk.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTalk: GetTalk? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTalk": getTalk.flatMap { $0.snapshot }])
    }

    public var getTalk: GetTalk? {
      get {
        return (snapshot["getTalk"] as? Snapshot).flatMap { GetTalk(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTalk")
      }
    }

    public struct GetTalk: GraphQLSelectionSet {
      public static let possibleTypes = ["Talk"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("clientId", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerBio", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
        self.init(snapshot: ["__typename": "Talk", "id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var clientId: GraphQLID? {
        get {
          return snapshot["clientId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "clientId")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var speakerName: String {
        get {
          return snapshot["speakerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerName")
        }
      }

      public var speakerBio: String {
        get {
          return snapshot["speakerBio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerBio")
        }
      }
    }
  }
}

public final class ListTalksQuery: GraphQLQuery {
  public static let operationString =
    "query ListTalks($filter: ModelTalkFilterInput, $limit: Int, $nextToken: String) {\n  listTalks(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      clientId\n      name\n      description\n      speakerName\n      speakerBio\n    }\n    nextToken\n  }\n}"

  public var filter: ModelTalkFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelTalkFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listTalks", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTalk.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTalks: ListTalk? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTalks": listTalks.flatMap { $0.snapshot }])
    }

    public var listTalks: ListTalk? {
      get {
        return (snapshot["listTalks"] as? Snapshot).flatMap { ListTalk(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTalks")
      }
    }

    public struct ListTalk: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelTalkConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelTalkConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Talk"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("clientId", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("speakerName", type: .nonNull(.scalar(String.self))),
          GraphQLField("speakerBio", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
          self.init(snapshot: ["__typename": "Talk", "id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var clientId: GraphQLID? {
          get {
            return snapshot["clientId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "clientId")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var speakerName: String {
          get {
            return snapshot["speakerName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "speakerName")
          }
        }

        public var speakerBio: String {
          get {
            return snapshot["speakerBio"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "speakerBio")
          }
        }
      }
    }
  }
}

public final class OnCreateTalkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTalk {\n  onCreateTalk {\n    __typename\n    id\n    clientId\n    name\n    description\n    speakerName\n    speakerBio\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTalk", type: .object(OnCreateTalk.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTalk: OnCreateTalk? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTalk": onCreateTalk.flatMap { $0.snapshot }])
    }

    public var onCreateTalk: OnCreateTalk? {
      get {
        return (snapshot["onCreateTalk"] as? Snapshot).flatMap { OnCreateTalk(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTalk")
      }
    }

    public struct OnCreateTalk: GraphQLSelectionSet {
      public static let possibleTypes = ["Talk"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("clientId", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerBio", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
        self.init(snapshot: ["__typename": "Talk", "id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var clientId: GraphQLID? {
        get {
          return snapshot["clientId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "clientId")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var speakerName: String {
        get {
          return snapshot["speakerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerName")
        }
      }

      public var speakerBio: String {
        get {
          return snapshot["speakerBio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerBio")
        }
      }
    }
  }
}

public final class OnUpdateTalkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTalk {\n  onUpdateTalk {\n    __typename\n    id\n    clientId\n    name\n    description\n    speakerName\n    speakerBio\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTalk", type: .object(OnUpdateTalk.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTalk: OnUpdateTalk? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTalk": onUpdateTalk.flatMap { $0.snapshot }])
    }

    public var onUpdateTalk: OnUpdateTalk? {
      get {
        return (snapshot["onUpdateTalk"] as? Snapshot).flatMap { OnUpdateTalk(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTalk")
      }
    }

    public struct OnUpdateTalk: GraphQLSelectionSet {
      public static let possibleTypes = ["Talk"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("clientId", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerBio", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
        self.init(snapshot: ["__typename": "Talk", "id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var clientId: GraphQLID? {
        get {
          return snapshot["clientId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "clientId")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var speakerName: String {
        get {
          return snapshot["speakerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerName")
        }
      }

      public var speakerBio: String {
        get {
          return snapshot["speakerBio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerBio")
        }
      }
    }
  }
}

public final class OnDeleteTalkSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTalk {\n  onDeleteTalk {\n    __typename\n    id\n    clientId\n    name\n    description\n    speakerName\n    speakerBio\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTalk", type: .object(OnDeleteTalk.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTalk: OnDeleteTalk? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTalk": onDeleteTalk.flatMap { $0.snapshot }])
    }

    public var onDeleteTalk: OnDeleteTalk? {
      get {
        return (snapshot["onDeleteTalk"] as? Snapshot).flatMap { OnDeleteTalk(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTalk")
      }
    }

    public struct OnDeleteTalk: GraphQLSelectionSet {
      public static let possibleTypes = ["Talk"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("clientId", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerName", type: .nonNull(.scalar(String.self))),
        GraphQLField("speakerBio", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, clientId: GraphQLID? = nil, name: String, description: String, speakerName: String, speakerBio: String) {
        self.init(snapshot: ["__typename": "Talk", "id": id, "clientId": clientId, "name": name, "description": description, "speakerName": speakerName, "speakerBio": speakerBio])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var clientId: GraphQLID? {
        get {
          return snapshot["clientId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "clientId")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var speakerName: String {
        get {
          return snapshot["speakerName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerName")
        }
      }

      public var speakerBio: String {
        get {
          return snapshot["speakerBio"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "speakerBio")
        }
      }
    }
  }
}
