My prompt :
You work in the field of KPOP. Your Company is involved in the domain of Music. It is a company such as SM ENTERTAINEMENT or JYP ENTERTAINEMENT. We collect
data of how to create a group of kpop, the creation of album. Take inspiration from the following groups aespa, blackpink or twice (https://fr.wikipedia.org/wiki/Aespa, https://twice.jype.com/Default).
Your company wants to apply MERISE to design an information system.
You are responsible for the analysis part, i.e., gathering the company's requirements. It has called on a computer engineering student to carry out this project, and you must provide him with the necessary information so that he can
then apply the following steps of database design and development himself.
First, establish the data business rules for your company in the form of a bulleted list. It must correspond to the information provided by someone who knows how the company works, but not how an information system is built.
Next, based on these rules, provide a raw data dictionary with the following columns, grouped in a table: meaning of the data, type, size in number of characters or digits. There should be between 25 and 35 data items. It is used to provide additional information about each data item (size and type) but without any assumptions about how the data will be modeledlater.
Provide the business rules and the data dictionary.

Prompt answer :
It is great to meet you. As the Head of Strategy here at Nova-Genesis Entertainment (think of us as the next SM or JYP), I’m excited to get this information system off the ground.

To help you build our database using the MERISE method, I’ve broken down our operations. We specialize in "Concept-First" groups—much like aespa or TWICE—where every member, album, and marketing campaign is part of a larger, interconnected "universe."

Here are the business rules and the data dictionary for our project.

1. Business Rules
These rules represent how our company operates daily. They define the relationships between our artists, their music, and how we talk to the fans.

Artists & Groups: An artist can be a solo performer or a member of a group. A group must have at least one member. Each artist has a specific role (Main Vocal, Main Dancer, etc.).

Concepts & Lore: Every group is assigned a "Concept" (e.g., Cyberpunk, Bubblegum Pop). Some groups, like aespa, have specific "Avatar" data or lore associated with them.

Album Production: An album is produced by the company and is linked to exactly one group or solo artist. An album consists of multiple tracks.

Track Details: A track has a title, a duration, and a "vibe" category. A track can appear on only one album (excluding remixes, which we treat as new tracks).

Production Credits: Each track is composed and written by one or more producers/songwriters. We need to track their royalty percentages.

Fan Engagement: Fans can register for an official "Fanclub." Each fanclub is dedicated to one specific group.

My MCD :
<img width="1612" height="1258" alt="image" src="https://github.com/user-attachments/assets/a260e831-e726-4835-b493-5e1e9f1b89d9" />

