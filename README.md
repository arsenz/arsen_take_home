# arsen_take_home
# arsen_take_home



API keys are naively stored and retrieved from `.env` and are supplied in HTTP methods, which is a huge anti-pattern, but for the purposes of this project was not focused on.

---

However, what this project does well is applying modular clean architecture by utilizing `injectable` and `auto_route` modular code generation together with layer separation in each module.

Dependency inversion achieved by clean architecture allows for accessible testing.  
Not much attention was paid to design and UI appearance.
