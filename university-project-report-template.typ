// University Project Report Template
// A configurable Typst template for academic project reports

// Font Size Configuration (can be overridden)
#let default-font-sizes = (
  title: 22pt,
  heading: 16pt,
  subheading: 14pt,
  normal: 14pt,
  small: 14pt,
  body: 14pt,
)

// Title Page Function
#let title-page(
  project-title: "Project Title",
  project-subtitle: "A PROJECT REPORT",
  enrollment: (),
  guide-name: "Guide Name and Designation",
  university-name: "University Name",
  school-name: "School Name",
  department-name: "Computer Science and Engineering",
  degree-name: "BACHELOR OF TECHNOLOGY",
  logo-path: none,
  font-sizes: default-font-sizes,
) = {
  set page(paper: "a4", margin: (top: 0.75in, bottom: 0.75in, left: 0.66in, right: 0.66in))
  set par(justify: true)
  
  align(center)[
    #text(size: font-sizes.title, weight: "bold")[#project-title]
    #v(0.6cm)

    #text(size: font-sizes.normal, weight: "semibold")[#project-subtitle]
    #v(1.5cm)

    #text(size: font-sizes.normal, weight: "bold", style: "italic")[Submitted by]
    #v(0.6cm)

    #if enrollment != () {
      block(width: 50%,
      table(
        columns: (1fr, 1fr),
        stroke: none,
        gutter: 0.2cm,
        align: (center, center),
        inset: 0pt,
        text(size: font-sizes.small, weight: "semibold")[Enrollment No.],
        text(size: font-sizes.small, weight: "semibold")[Name],
        ..enrollment.map(((id, name)) => (
          text(size: font-sizes.small, id),
          text(size: font-sizes.small, name)
        )).flatten()
      )
      )
    }
    #v(1cm)

    #text(size: font-sizes.normal, weight: "bold")[in partial fulfillment for the award of the]

    #text(size: font-sizes.subheading, weight: "bold")[#degree-name] \
    #text(size: font-sizes.normal)[IN\ ]
    #text(size: font-sizes.normal)[#department-name]
    #v(1cm)

    #if logo-path != none {
      image(logo-path)
      v(1cm)
    }

    #text(size: font-sizes.normal, weight: "semibold")[#school-name]
\
    #text(size: font-sizes.normal, weight: "semibold")[#university-name]
  ]
}

// Acknowledgements Page Function
#let acknowledgements-page(
  content: none,
  guide-name: "Guide Name",
  director-name: "Director Name",
  principal-name: "Principal Name",
  university-name: "University Name",
  school-name: "School Name",
  department-name: "Computer Science and Engineering",
  font-sizes: default-font-sizes,
) = {
  pagebreak()
  align(center)[
    #text(size: font-sizes.heading, weight: "bold")[ACKNOWLEDGEMENTS]
  ]
  v(1cm)
  set par(justify: true, leading: 0.65em)
  set text(size: font-sizes.body)
  
  if content != none {
    content
  } else {
    [
      The satisfaction that accompanies successful completion of any task would be incomplete without mention of people who made it possible, and whose constant encouragement and guidance have been source of inspiration throughout the course of this project work.

      We owe our gratitude to *#director-name*, Director, #university-name. We would like to place our heartfelt gratitude to *#principal-name*, Principal, #school-name for their valuable support and inspiration.

      It is a great pleasure to express our gratitude and indebtedness to our project guide *#guide-name*, Department of #department-name, #school-name for their valuable guidance, encouragement, moral support, and affection throughout the project work.

      We would like to thank express our gratitude to project panel members for their suggestions, encouragement, and moral support during the process of project work and all faculty members for their academic support. Finally, we are forever grateful to our parents, who have loved, supported and encouraged us in all our endeavors.
    ]
  }
}

// Abstract Page Function
#let abstract-page(
  content: "Abstract text goes here.",
  font-sizes: default-font-sizes,
) = {
  pagebreak()
  align(center)[
    #text(size: font-sizes.title, weight: "bold")[ABSTRACT]
  ]
  v(0.5cm)
  set par(justify: true, leading: 0.65em)
  set text(size: font-sizes.body)
  content
}

// Table of Contents Page Function
#let toc-page(
  font-sizes: default-font-sizes,
) = {
  pagebreak()
  align(center)[
    #text(size: font-sizes.heading, weight: "bold")[TABLE OF CONTENTS]
  ]
  v(0.5cm)
  outline()
}

// Chapter Function
#let chapter(
  chapter-name, 
  chapter-num, 
  chapter-title, 
  body,
  department-name: "Dept. of CSE",
  school-short-name: "ASC",
  location: "Bengaluru",
  font-sizes: default-font-sizes,
) = {
  set page(
    header: [
      #set text(size: font-sizes.small)
      #table(
        columns: (1fr, 1fr),
        stroke: none,
        inset: 5pt,
        align: (left, right),
        [#chapter-name], 
        [#datetime.today().display("[month repr:long], [year]")]
      )
    ],
    footer: context [
      #set text(size: font-sizes.small)
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [#department-name, #school-short-name, #location],
        [Page | #counter(page).display()]
      )
    ]
  )
  
  [
    #align(center)[
      #text(size: font-sizes.heading, weight: "bold")[ = CHAPTER - #chapter-num]
      #v(0.3cm)
      #text(size: font-sizes.heading, weight: "bold")[#chapter-title]
    ]
    #v(1cm)
    
    #set text(size: font-sizes.body)
    #set par(justify: true, leading: 0.65em, first-line-indent: 1.5em)
    #body
  ]
}

// Report Configuration Function - Main entry point for the template
#let report(
  // Project Information
  project-title: "Project Title",
  project-subtitle: "A PROJECT REPORT",
  enrollment: (),
  guide-name: "Guide Name and Designation",
  
  // University Information
  university-name: "University Name",
  school-name: "School Name",
  school-short-name: "School",
  department-name: "Computer Cooking and Art",
  department-short-name: "Dept. of XXX",
  degree-name: "BACHELOR OF TECHNOLOGY",
  location: "City",
  
  // Personnel
  director-name: "Director Name",
  principal-name: "Principal Name",
  
  // Assets (optional)
  logo-path: none,

  // Content
  abstract-content: "Abstract text goes here.",
  acknowledgements-content: none,
  
  // Font sizes (optional override)
  font-sizes: default-font-sizes,
  
  // Document body
  body,
) = {
  // Set document defaults
  set page(paper: "a4", margin: (top: 0.75in, bottom: 0.75in, left: 0.66in, right: 0.66in))
  set par(justify: true)
  
  // Title Page
  title-page(
    project-title: project-title,
    project-subtitle: project-subtitle,
    enrollment: enrollment,
    guide-name: guide-name,
    university-name: university-name,
    school-name: school-name,
    department-name: department-name,
    degree-name: degree-name,
    logo-path: logo-path,
    font-sizes: font-sizes,
  )
  
  // Acknowledgements Page
  acknowledgements-page(
    content: acknowledgements-content,
    guide-name: guide-name,
    director-name: director-name,
    principal-name: principal-name,
    university-name: university-name,
    school-name: school-name,
    department-name: department-name,
    font-sizes: font-sizes,
  )
  
  // Abstract Page
  abstract-page(
    content: abstract-content,
    font-sizes: font-sizes,
  )
  
  // Table of Contents
  toc-page(font-sizes: font-sizes)
  
  // Reset page counter for content
  counter(page).update(1)
  
  // Create a state for chapter info to use in subsequent chapters
  let chapter-info = state("chapter-info", (
    department-short-name: department-short-name,
    school-short-name: school-short-name,
    location: location,
    font-sizes: font-sizes,
  ))
  
  // Document body (chapters)
  body
}