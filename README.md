# terraform-practice

######################################################################################################################
What is Terraform?

* Deploy infrastructure as a code
* Supports multiple cloud providers
* Keep your infrastructure in a specific state you want
 2 ec2 instances , with 1 elastic ip attached , 1 in public , 1 in private
* Your infrastructure in a code revisioning system
* Using terraform scripting format called templates , you can deploy infrastructure
* Can do software provisioning using provisioners
		Local-exec
		Remote-exec
		Chef – puppet plugins

######################################################################################################################

a) Provider ( To define the information about your cloud provider ex. AWS, Gcloud, Azure)
b) Resources ( Mention resources which you want to create ex. instance, Security group, subnet)
c) Variable (Define variable to use the value in your code daynamic)
d) Output ( To print the output of variable in console)
e) Modules ( Your tf file will be host as a module by using this you can deploy resources)

######################################################################################################################

Terraform Commands:

a) Terraform init (It download plugin to use for your provider)
b) Terraform plan (Terraform plan command use to let us know what kind of stuff we are going to do, here in output the plus (+) means we are going to add that resources and if there a minus (-) then it will destroy that resource )
c) Terraform refresh (It tries to look at the current AWS cloud state and refresh the current local state of terraform project)
d) Terraform apply ( use to perform the actions described in modules and create a terraform.tfstate and terraform.tfstate.backup files )
e) Terraform destroy (Destroy Terraform-managed infrastructure)

#######################################################################################################################

# terraform -h
``Usage: terraform [-version] [-help] <command> [args]

The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.

Common commands:
    apply              Builds or changes infrastructure
    console            Interactive console for Terraform interpolations
    destroy            Destroy Terraform-managed infrastructure
    env                Workspace management
    fmt                Rewrites config files to canonical format
    get                Download and install modules for the configuration
    graph              Create a visual graph of Terraform resources
    import             Import existing infrastructure into Terraform
    init               Initialize a Terraform working directory
    output             Read an output from a state file
    plan               Generate and show an execution plan
    providers          Prints a tree of the providers used in the configuration
    refresh            Update local state file against real resources
    show               Inspect Terraform state or plan
    taint              Manually mark a resource for recreation
    untaint            Manually unmark a resource as tainted
    validate           Validates the Terraform files
    version            Prints the Terraform version
    workspace          Workspace management

All other commands:
    0.12upgrade        Rewrites pre-0.12 module source code for v0.12
    debug              Debug output management (experimental)
    force-unlock       Manually unlock the terraform state
    push               Obsolete command for Terraform Enterprise legacy (v1)
    state              Advanced state management
``
#######################################################################################################################

