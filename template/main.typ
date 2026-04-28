// Import the template library
#import "@local/university-project-report-template:0.1.0": *

// Configure and use the report template
#show: report.with(
  // === Project Information ===
  project-title: "Intelligent Traffic Management System Using Machine Learning",
  project-subtitle: "A PROJECT REPORT",
  
  // Student enrollment information (ID, Name) pairs
  enrollment: (
    ("BL.EN.U4CSE22001", "Alice Johnson"),
    ("BL.EN.U4CSE22002", "Bob Smith"),
    ("BL.EN.U4CSE22003", "Carol Williams"),
  ),
  
  guide-name: "Dr. John Doe, Associate Professor",
  
  // === University Information ===
  university-name: "AMRITA VISHWA VIDYAPEETHAM",
  school-name: "AMRITA SCHOOL OF COMPUTING, BENGALURU",
  school-short-name: "ASC",
  department-name: "COMPUTER SCIENCE AND ENGINEERING",
  department-short-name: "Dept. of CSE",
  degree-name: "BACHELOR OF TECHNOLOGY",
  location: "Bengaluru",
  
  // === Personnel ===
  director-name: "Prof. Manoj P.",
  principal-name: "Dr. Gopalakrishnan E.A.",
  
  // === Assets (optional) ===
  logo-path: "./template/logo.svg",
  // Uncomment and set path to your university logo

  // === Content ===
  abstract-content: [
    Traffic congestion in urban areas has become a significant challenge affecting daily commuters and the environment. This project presents an intelligent traffic management system that leverages machine learning algorithms to optimize traffic flow at intersections. The proposed system uses real-time data from sensors and cameras to predict traffic patterns and dynamically adjust signal timings. Our implementation demonstrates a 25% reduction in average waiting time and a 15% improvement in overall traffic throughput. The system was tested using both simulated and real-world data from selected intersections, showing promising results for large-scale deployment.
  ],
  
  // Custom acknowledgements (optional - leave as none for default template)
  acknowledgements-content: none,
)

// ============================================
// CHAPTERS
// ============================================

// CHAPTER 1: INTRODUCTION
#chapter("Introduction", "1", "INTRODUCTION")[
  == 1.1 Background
  
  Traffic congestion is one of the most pressing challenges facing modern urban environments. With the rapid increase in vehicular population and limited road infrastructure, traditional traffic management systems are proving inadequate.
  
  == 1.2 Problem Statement
  
  Current traffic signal systems operate on fixed timing patterns that do not adapt to real-time traffic conditions. This leads to inefficient use of road capacity and increased waiting times for commuters.
  
  == 1.3 Objectives
  
  The main objectives of this project are:
  - To develop a machine learning model for traffic prediction
  - To implement an adaptive signal control system
  - To evaluate the system performance under various traffic conditions

  == 1.4 Lorem Ipsum it
  #lorem(500)
]
// CHAPTER 2: LITERATURE REVIEW 
#pagebreak()
#chapter("Literature Review", "2", "LITERATURE REVIEW")[
  == 2.1 Traditional Traffic Management
  
  Traditional traffic management systems have relied on fixed-time signal controllers. These systems were designed based on historical traffic data and operate on predetermined cycles.
  
  == 2.2 Machine Learning in Traffic Systems
  
  Recent advances in machine learning have opened new possibilities for intelligent traffic management. Various approaches including neural networks, reinforcement learning, and ensemble methods have been explored.
]

// CHAPTER 3: SYSTEM SPECIFICATIONS
#pagebreak()
#chapter("System Specifications", "3", "SYSTEM SPECIFICATIONS")[
  == 3.1 Hardware Requirements
  
  - Processing Unit: Intel Core i5 or equivalent
  - RAM: Minimum 8GB
  - Storage: 256GB SSD
  - Camera: HD resolution (1080p) traffic cameras
  
  == 3.2 Software Requirements
  
  - Operating System: Ubuntu 20.04 LTS
  - Programming Language: Python 3.9+
  - Machine Learning Framework: TensorFlow 2.x
  - Database: PostgreSQL 13
]

// CHAPTER 4: SYSTEM DESIGN
#pagebreak()
#chapter("System Design", "4", "SYSTEM DESIGN")[
  == 4.1 System Architecture
  
  The proposed system follows a modular architecture consisting of three main components: data collection module, prediction engine, and control interface.
  
  == 4.2 Data Flow
  
  Traffic data flows from sensors to the central processing unit where it is analyzed and predictions are generated in real-time.
]

// CHAPTER 5: SYSTEM IMPLEMENTATION
#pagebreak()
#chapter("System Implementation", "5", "SYSTEM IMPLEMENTATION")[
  == 5.1 Data Collection
  
  The system collects data from multiple sources including loop detectors, video cameras, and GPS-enabled vehicles.
  
  == 5.2 Model Training
  
  The machine learning model was trained on historical traffic data spanning 12 months, covering various weather conditions and special events.
]

// CHAPTER 6: SYSTEM TESTING
#pagebreak()
#chapter("System Testing", "6", "SYSTEM TESTING")[
  == 6.1 Test Environment
  
  Testing was conducted in both simulated and real-world environments to validate system performance.
  
  == 6.2 Test Cases
  
  Multiple test scenarios were designed to evaluate system behavior under normal, peak, and emergency traffic conditions.
]

// CHAPTER 7: RESULTS AND ANALYSIS
#pagebreak()
#chapter("Results and Analysis", "7", "RESULTS AND ANALYSIS")[
  == 7.1 Performance Metrics
  
  The system achieved a 25% reduction in average waiting time and 15% improvement in traffic throughput compared to traditional fixed-time systems.
  
  == 7.2 Comparative Analysis
  
  Our approach outperformed existing solutions in terms of adaptability and response time to changing traffic conditions.
]

// CHAPTER 8: CONCLUSION AND FUTURE SCOPE
#pagebreak()
#chapter("Conclusion and Future Scope", "8", "CONCLUSION AND FUTURE SCOPE")[
  == 8.1 Conclusion
  
  This project successfully demonstrated the application of machine learning for intelligent traffic management. The results indicate significant potential for improving urban mobility.
  
  == 8.2 Future Scope
  
  Future enhancements could include integration with emergency vehicle priority systems and coordination across multiple intersections for corridor-level optimization.
]

// CHAPTER 9: REFERENCES
#pagebreak()
#chapter("References", "9", "REFERENCES")[
  // You can use a bibliography file:
  // #bibliography("references.bib", style: "ieee")

  // Or manually format references:
  [
    [1] R.E. Uhrig, "Introduction to Artificial Neural Networks", Industrial Electronics, Control, and Instrumentation, Proceedings of the IEEE IECON 21st International Conference, Vol. 1, pp. 33-37, 1995.
  ]
  #v(0.5em)
  [
    [2] Wei, H. et al., "A Survey on Traffic Signal Control Methods", arXiv preprint arXiv:1904.08117, 2019.
  ]
  #v(0.5em)
  [
    [3] Li, L., Lv, Y., and Wang, F., "Traffic signal timing via deep reinforcement learning", IEEE/CAA Journal of Automatica Sinica, vol. 3, no. 3, pp. 247-254, 2016.
  ]
]
