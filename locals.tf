locals {
    project = {
        "fem-eci-project" = {
        source  = "ALT-F4-LLC/project/tfe"
        version = "0.4.0"
        description       = "Example description of project"
        organization_name = var.organization_name
        }
    }
    workspace = {
        "fem-eci-tfe" = {
        description       = "Example description of workspace" 
        execution_mode    = "local"
        project_id        = module.project["fem-eci-project"].id
        }

    }
}

moved {
    from = module.workspace["fem-eci-workspace"]
    to = module.workspace["fem-eci-tfe"]    
}