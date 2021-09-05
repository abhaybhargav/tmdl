namespace: [X=string]: {
    name: X
    description?: !=""
    metadata?: {
        labels?: [...string]
    }
}


application: [X=string]: {
    name: X
    description: !=""
    app_type: "webapp" | "api" | "mobileapp"
    hosting: "cloud" | "on_prem" | "saas" | "hybrid"
    compute: "vm" | "container" | "faas"
    technologies: [...string]
    namespace: string
    metadata?: {
        labels?: [...string]
    }
}

datastore: [X=string]: {
    name: X
    type: "database" | "file_store" | "object_store" | "queue"
    hosting: "cloud" | "on_prem" | "baas" | "hybrid" 
    application: string
    metadata?: {
        labels?: [...string]
    }
}

//
component: [X=string]: {
    name: X
    component_type: "external_api" | "middleware" | "executable" | "internal_app"
    nature: "communication" | "data_processing" | "access_control"
    description?: !=""
    in_trust_boundary: bool | false
    primary_security_trait: "authentication" | "authorization" | "availability" | "integrity" | "auditability"
    connected_to?: [...string]
    depends_on?: [...string]
    application: string

}


user_story: [X=string]: {
    name: X
    description: !=""
    stride: {
        spoofing?: bool | false
        tampering?: bool | false
        repudiation?: bool | false
        information_disclosure?: bool | false
        denial_of_service?: bool | false
        elevation_of_privs?: bool | false
    }
    primary_security_trait: "authentication" | "authorization" | "availability" | "integrity" | "auditability"
    component?: [...string]
    depends_on?: [...string]
    epic?: string
    application: string
    metadata?: {
        labels?: [...string]
    }
}


abuser_story: [X=string]: {
    name: X
    description: !=""
    user_stories: [...string]
    metadata?: {
        labels?: [...string]
    }
}


threat_scenario: [X=string]: {
    name: X
    description: !=""
    user_stories?: [...string]
    abuser_stories?: [...string]
    cwe: int
    metadata?: {
        actor?: string
        observation?: string
        labels?: string
    }
    impact: "critical" | "high" | "medium" | "low" | "negligible"
}

security_test_case: [X=string]: {
    name: X
    description: !=""
    type: "automated_vul_scan" | "manual" | "sast" | "sca_sbom"
    objective?: != ""
    metadata?: {
        labels?: [...string]
    }
    source: "manual" | "capec" | "other"
    threat_scenarios: [...string]
}

mitigation: [X=string]: {
    name: X
    description: !=""
    orientation: "preventive" | "detective" | "corrective"
    source: "manual" | "cis" | "asvs" | "other"
    metadata?: {
        labels?: [...string]
        id?: string
    }
    threat_scenario?: [...string]
    user_stories?: [...string]
}

