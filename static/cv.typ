// Import the resume template components
#import "@preview/ttq-classic-resume:0.1.0": project-entry, resume, resume-header, section-header, table, timeline-entry
#show: resume
#show link:underline

#resume-header(
  name: "Saroj Regmi",
  contacts: (
    "contact@sarojr.com",
    "+977 9769821979",
    "github.com/0x2f0",
    "linkedin.com/in/0x2f0",
    "Kathmandu, Nepal",
  ),
)

#section-header("Skills")

// Use table for categorized information like skills
// Each item has a 'category' and 'text'
#table(
  items: (
    (category: "Programming", text: [HTML, CSS, Javascript, Typescript, React, Nextjs, Tailwindcss, Bash, React Native]),
    (category: "Tools", text: [Git, Github, Gitea, Linux, Figma, Neovim]),
  ),
  columns: 2,
)


#section-header("Experience")
#timeline-entry(
  heading-left: "Summercamp COSOG Nepal",
  heading-right: "June 2026 - Present",
  subheading-left: "Mentor | Nepali Eco Chatbot",
  subheading-right: "Kathmandu, Nepal (Remote)",
  body: [
    - Mentoring, guiding, assessing and providing constructive feedback to the students. 
    - Overseeing the project and collaborating with the co-mentor.  
    - Resolving their queries about the project and creating a safe collaborative environment.
    - #link("https://summercamp.cosog.org")[learn more].
  ]
)


#timeline-entry(
  heading-left: "Bright Office Systems Pvt. Ltd.",
  heading-right: "March 2024 - February 2026",
  subheading-left: "Web & Mobile Application Developer | Product Team Lead",
  subheading-right: "Butwal, Rupandehi, Nepal",
  body: [
    - Created the #link("https://app.brightschool.com.np")[web platform] for the existing mobile application only solution used by roughly 200k students and 10k teachers across 416 different schools.
      - Migrated the base written in Nextjs to tanstack router and created a static build. 
      - Instructions to preview demo: 
        - Visit the #link("https://app.brightschool.com.np")[web platform] and search brightsoftware
        - Demo Teacher Id and password: teacher12345 
        - Demo Student Id and password: 2student 
    - Solved the several bugs in the #link("https://play.google.com/store/apps/details?id=com.brightui")[mobile application]. 
    - Led the rewrite of Legacy (8+ yrs) Admin pannel and the eco system surrounding it.
      - Trained 3 interns, 1 designer, 1 QA and collaborated with upper management.
      - Redesigned the flow from ground up to improve both UI and UX.
      - Created the CI/CD pipeline and hosted the office git system using Gitea.
      - Created the base and guidelines for other developers to work on closely worked with backend developer to ensure better product.
      - Identified and covered the gaps in communication between upper management and dev team to ensure smooth development flow. 
      - Instructions to preview demo:
        - visit the #link("https://demo.brightsoft.com.np/login")[project].
        - ID: dev3\@brightschool.com
        - pwd: password_dev\@3
  ],
)

#timeline-entry(
  heading-left: "Coding For Social Good (COSOG) Nepal",
  heading-right: "August 2023 - November 2024",
  subheading-left: "It Head",
  subheading-right: "Kathmandu (Remote)",
  body: [
    - Created the entire IT infrastructure and online presence. 
      - Designed and Developed #link("cosognepal.org")
    - Helped in different awareness sessions.
  ],
)

#section-header("Education")

#timeline-entry(
  heading-left: "Kalika Manavgyan secondary school",
  heading-right: "December 2023",
  subheading-left: "Highschool Computer Science (Technical stream)",
  subheading-right: "Butwal, Rupandehi, Nepal",
)
