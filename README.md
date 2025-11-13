# arsen_take_home



API keys are naively stored and retrieved from `.env` and are supplied in HTTP methods, which is a huge anti-pattern, but for the purposes of this project was not focused on.

---

However, what this project does well is applying modular clean architecture by utilizing `injectable` and `auto_route` modular code generation together with layer separation in each module.
Additionally, it utilises a new flutter feature - workspaces, which is a built-in support for monorepo that does away with third party packages like melos

Dependency inversion achieved by clean architecture allows for accessible testing.  
Not much attention was paid to design and UI appearance.
