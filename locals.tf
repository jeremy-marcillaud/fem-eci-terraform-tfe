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
        execution_mode    = "remote"
        project_id        = module.project["fem-eci-project"].id
        vcs_repo_identifier = "jeremy-marcillaud/fem-eci-terraform-tfe"
        }
    }
}