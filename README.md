# First workthrough using SwiftUI and AWS
This will be my test repo as I start to add a lot of new stuff and learn more about SwiftUI.


## Features in the repo right now
- [x] Appsync and Codegen working together.
    - Features:
        - Get a list back to populate a `List` view
        - Add objects
    - Issues:
        - ~Codegen will need to be modified to include SwiftUI and also to make the Item objects `Identifiable`. This is a requirment for `ForEach` and `List` in SwiftUI.~ Fixed using `identified(by:)`
        
- [ ] Adding auth page with Apple Sign in w/ Cognito
    - Features:
        - N/A
    - Issues:
        - Cognito doesnt currently support Sign In with Apple. 
        - Docs not clear around Sign In With Apple

- [ ] Add pinpoint analytics to app
    - Features:
        - N/A
    - Issues:
        - N/A
