## Threat Model Definition Language - TMDL

> An attempt at creating a unifying Threat Model Definition Language using a declarative syntax with cuelang

### Existing Problems with Threat Modeling as Code

* Currently Threat Modeling can be composed in programming languages like Python (pytm) or in declarative syntax like YAML (ThreatPlaybook). YAML is painful to work with owing to whitespace and indentation issues. Using imperative techniques to define threat models with programming languages adds an signficant entry barrier to practitioners and does not engender "desired state" with simple declarations
* Hard to understand functions and keywords, making it harder to compose threat models. 
* Hard to enforce constraints with existing formats
* Cannot be evaluated against multiple formats. Single format ensures that composition and parsing happens in that single format

### Problems that this project aims to solve
* Provide a consistent, declarative definition syntax using cuelang, which is more purpose-built for this and similar use-cases
* Capture multiple facets of data related to a Threat Model. Not only Features, but components, security requirements, etc. 
* Enforcing constraints based on a single unified schema across all objects
* Import from JSON, YAML using cuelang
* Easily parsed and evaled in multiple formats including JSON, YAML from cue directly

### TODOs

Please refer to project info for TODO list