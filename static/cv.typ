#show link: underline.with(offset: 2pt)

#let personal_info = (
  name: "Saroj Regmi",
  email: "contact@sarojr.com",
  github: "0x2f0",
  linkedin: "0x2f0",
  location: "Bhaktapur, Nepal"
)

#let resume-header(contacts: personal_info ) = {
  align(center)[ 
    #stack(
      dir: ttb, 
      spacing: 15pt,
      text(contacts.name, 16pt),
      stack(
        dir: ltr,
        spacing: 10pt,
        link("https://github.com/"+contacts.github)[ /#contacts.github],
        link("https://sarojr.com")[ sarojr.com],
        link("https://linkedin.com/in/"+contacts.linkedin)[󰌻 /#contacts.linkedin],
        link("mailto:"+contacts.email)[󰇮  /contact\@sarojr.com],
        link("https://maps.app.goo.gl/cQE4NbGcLP7j7Twv5")[󰍎 #contacts.location]
      )
    )
  ]
}

#let secondary_color = rgb("#444")

#let section-header(txt: none) = {
  v(10pt)
  upper(text(txt, 12pt))
  v(-10pt)
  line(length: 100%, stroke: 0.2pt + secondary_color)
}

#let timeline-entry( heading-left:none, heading-right: none, subheading-left: none, subheading-right:none, body: none) = {
  let lh = stack(
    dir: ttb,
    spacing: 10pt,
    upper(text(heading-left, 10pt)),
    v(6pt),
    emph(text(subheading-left, 10pt, secondary_color))
  )

  let rh = stack(
    dir: ttb,
    spacing: 10pt,
    align(right)[
      #text(heading-right, 10pt, secondary_color)\
      #text(subheading-right, 10pt, secondary_color)
    ]
  )

stack(
  dir: ttb,
  spacing: 10pt,
  stack(
    dir: ltr,
    spacing: 1fr, 
    lh, 
    rh
  ),
  text(body, 10pt, secondary_color),
)
}

#set page(
  margin: (x: 0.25in, y: 0.25in) // why the fuck are these margins same??? 0.25 in x and 0.5 in y??
)

#resume-header()

#section-header(txt: "Intro")
#section-header(txt: "Education")
#timeline-entry(
  heading-left: "Computer Science (Technical stream)",
  subheading-left: "Kalika Manavgyan secondary school, NEB",
  heading-right: "2019-2023",
  subheading-right: "Butwal, Rupandehi, Nepal",
)

#timeline-entry(
  heading-left: "Bachelor of Information Technology",
  subheading-left: "Patan Multiple Campus, Tribhuwan University",
  heading-right: "2026-2030",
  subheading-right: "Patan dhoka, Lalitpur",
)

#section-header(txt: "Experience")
#timeline-entry(
  heading-left: "Mentor Nepali Eco Chatbot",
  subheading-left: [#link("https://summercamp.cosognepal.org")[Summercamp], #link("https://cosognepal.org")[Cosog Nepal]],
  heading-right: "Jun - Sept 2026",
  subheading-right: "(Remote) Kathmandu, Nepal",
  body: stack(
    dir: ttb,
    spacing: 15pt,
    list(
      [Guided 6 mentees into building #link("http://nepaliecochat.bot")[Nepali Eco Chatbot]],
      [Organized weekly sessions and aided in individual development.],
      [Architected the #link("https://github.com/Nepali-Eco-chatbot/")[project] to be as free, efficient and easier to grasp as possible.],
      [Architected the google sheets to github actions embedding generation workflow.]
    ),
    [#emph([Skills: RAG, Vector Embedding, Vector Database, SQL, Typescript, Hono, Github Actions, #link("https://developers.google.com/apps-script")[appscript], turso, cloudflare])]
  )
)

#v(10pt)
#timeline-entry(
  heading-left: "Product Team Lead",
  subheading-left: link("https://brightit.com.np/")[Bright Office Systems],
  heading-right: "Jul 2024 - Feb 2026",
  subheading-right: "(Onsite) Butwal, Nepal",
  body: stack(
    dir: ttb,
    spacing: 15pt,
    list(
      [Solved the several bugs in the #link("https://play.google.com/store/apps/details?id=com.brightui")[mobile application]. ],
      [Led the rewrite of Legacy (8+ yrs) Admin pannel and the eco system surrounding it.],
      [Trained 3 interns, 1 designer, 1 QA and collaborated with upper management.],
      [Created several interal npm packages that are heavily used in the product.],
      [Redesigned the flow from ground up to improve both UI and UX.],
      [Created the CI/CD pipeline and hosted the office git system using #link("https://about.gitea.com/")[Gitea.]],
      [Created the base and guidelines for other developers to work on closely worked with backend developer to ensure better product.],
      [Identified and covered the gaps in communication between upper management and dev team to ensure smooth development flow.],
    ),
    [#emph([Skills: Bash, Linux, Inertia React, Semantic Search, Github Actions, Gitea Actions, Docker, library development, Team work, Communication, Product Research, Leadership])]
  )
)

#v(10pt)
#timeline-entry(
  heading-left: "Web & Mobile Application Developer",
  subheading-left: link("https://brightit.com.np/")[Bright Office Systems],
  heading-right: "Mar - Jul 2024",
  subheading-right: "(Onsite) Butwal, Nepal",
  body: stack(
    dir: ttb,
    spacing: 15pt,
    list(
      [Created the #link("https://app.brightschool.com.np")[web platform] for the existing mobile application only solution.\ That was used by roughly 200k students and 10k teachers across 416 different schools.],
      [Migrated the base written in Nextjs to tanstack router and created a static build.],
  ),
    [#emph([Skills: Tanstack Router, Next JS, React])]
  )
)

#section-header(txt: "Honors & Awards")
