namespace: crm: {
    description: "CRM namespace that consists of multiple microservices in the CRM app"
    metadata: {
        labels: ["crm", "acmeco", "public"]
    }
}


application: hello_world: {
    description: "AcmeHRMS"
    app_type: "webapp"
    hosting: "cloud"
    technologies: ["python", "javascript"]
    compute: "vm"
    namespace: "crm"
    metadata: {
        labels: ["crm", "acmeco", "public"]
    }
}

datastore: mysql_hello_world: {
    type: "database"
    hosting: "cloud"
    application: "hello_world"
    metadata: {
        labels: ["crm", "acmeco", "public"]
    } 
}

component: email_api_hello_world: {
    component_type: "external_api"
    nature: "communication"
    description: "using amazon SES to send emails to customers"
    in_trust_boundary: false
    primary_security_trait: "authorization"
    connected_to: ["mysql_hello_world"]
    depends_on: ["mysql_hello_world"]
}

user_story: admin_user_create_customer: {
    description: """
    As an administrative user of the application, I would like to create a customer record in the hello world app of the CRM
    , so I can start staying in touch with the customer after I create the record and logging all comms with the customer
    """
    stride: {
        spoofing: true
        repudiation: true
        elevation_of_privs: true
    }
    epic: "manage customers"
    application: "hello_world"

}