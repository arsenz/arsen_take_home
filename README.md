# arsen_take_home
# arsen_take_home

This project architecture trivializes authentication and `dio_client` instance management (for the lack of time).  
Ideally, authorization should be maintained by a global Bloc provided above the `MaterialApp`, and an interceptor should refresh tokens on `401`s to update the header bearer.

Additionally, API keys are naively stored and retrieved from `.env` and are supplied in HTTP methods, which is a huge anti-pattern, but for the purposes of this project was not focused on.

---

However, what this project does well is applying modular clean architecture by utilizing `injectable` and `auto_route` modular code generation together with layer separation in each module.

Dependency inversion achieved by clean architecture allows for accessible testing.  
Not much attention was paid to design and UI appearance.
