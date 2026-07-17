# University Project Report Template

A configurable Typst template for academic project reports. Originally designed for Amrita Vishwa Vidyapeetham but fully customizable for any university.

## Features

- Configurable title page with university branding
- Customizable acknowledgements section
- Abstract page
- Auto-generated table of contents
- Chapter template with headers and footers
- Professional formatting for academic reports

## Installation

### Temporary Installation

If you prefer not to install the package or need to use the template in the online Typst editor, simply download the `university-project-report-template.typ` file from the repository and place it next to your main `.typ` file. Then import it directly using:

```typst
#import "university-project-report-template.typ": *
```

### Permanent Installation

To install this package locally, clone the repository into your local Typst package directory.

**Linux:**
```bash
git clone https://github.com/nithitsuki/university-project-report-typst.git "${XDG_DATA_HOME:-$HOME/.local/share}/typst/packages/local/university-project-report-typst/0.1.0"
```

**macOS:**
```bash
git clone https://github.com/nithitsuki/university-project-report-typst.git ~/Library/Application\ Support/typst/packages/local/university-project-report-typst/0.1.0
```

**Windows (PowerShell):**
```powershell
git clone https://github.com/nithitsuki/university-project-report-typst.git "$env:APPDATA/typst/packages/local/university-project-report-typst/0.1.0"
```

Then you can start using it with:

```bash
typst init "@local/university-project-report-typst:0.1.0"
```

## Usage

Import the library in your Typst file:

```typst
#import "university-project-report-template.typ": *
```

Configure and use the report template:

```typst
#show: report.with(
  project-title: "Your Project Title",
  project-subtitle: "A PROJECT REPORT",
  enrollment: (
    ("STUDENT_ID_1", "Student Name 1"),
    ("STUDENT_ID_2", "Student Name 2"),
  ),
  guide-name: "Dr. Guide Name, Designation",
  university-name: "YOUR UNIVERSITY NAME",
  school-name: "YOUR SCHOOL/COLLEGE NAME",
  department-name: "YOUR DEPARTMENT",
  degree-name: "BACHELOR OF TECHNOLOGY",
  logo-path: "path/to/logo.svg",
  abstract-content: [Your abstract content here.],
)

// Your chapters go here
#chapter("Introduction", "1", "INTRODUCTION")[
  Your content...
]
```

## Configuration Options

| Parameter | Description | Default |
|-----------|-------------|---------|
| `project-title` | Title of your project | "Project Title" |
| `project-subtitle` | Subtitle (e.g., "A PROJECT REPORT") | "A PROJECT REPORT" |
| `enrollment` | Array of (ID, Name) tuples for students | `()` |
| `guide-name` | Project guide's name and designation | "Guide Name and Designation" |
| `university-name` | Full university name | "University Name" |
| `school-name` | School/College name | "School Name" |
| `school-short-name` | Abbreviated school name (for footer) | "School" |
| `department-name` | Department name | "Computer Science and Engineering" |
| `department-short-name` | Abbreviated dept name (for footer) | "Dept. of CSE" |
| `degree-name` | Degree being pursued | "BACHELOR OF TECHNOLOGY" |
| `location` | City/Location | "City" |
| `director-name` | Director's name (for acknowledgements) | "Director Name" |
| `principal-name` | Principal's name (for acknowledgements) | "Principal Name" |
| `logo-path` | Path to university logo (optional) | `none` |
| `abstract-content` | Abstract text content | "Abstract text goes here." |
| `acknowledgements-content` | Custom acknowledgements (or `none` for default) | `none` |

## Chapter Function

Create chapters using the `chapter` function:

```typst
#chapter("Chapter Name", "1", "CHAPTER TITLE")[
  == Section 1.1
  Your content here...
]

#pagebreak()
#chapter("Next Chapter", "2", "NEXT CHAPTER TITLE")[
  ...
]
```

## Structure

```
├── lib.typ                                 # Package entry point
├── university-project-report-template.typ  # Main template library
├── template/
│   └── main.typ                            # Demo/example usage
├── typst.toml                              # Package configuration
└── assets/
    └── logo.svg                            # Your university logo (optional)
```

## Customizing Font Sizes

You can override the default font sizes:

```typst
#import "university-project-report-template.typ": *

#let my-fonts = (
  title: 24pt,
  heading: 18pt,
  subheading: 16pt,
  normal: 14pt,
  small: 12pt,
  body: 14pt,
)

#show: report.with(
  font-sizes: my-fonts,
  // ... other options
)
```

## License

MIT License - see [LICENSE](LICENSE) for details.
