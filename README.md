# cloud-infrastructure-assetron
This repository is to handle the cloud infrastructure for `azure resources`.
It covered the Major Azure resources 
`Azure Resource Group`
`Azure AD B2C`

## Architecture
It uses `multi branch pattern`  to isolate dev qa prod environement.
And it work with `GitHub Actions` to deploy Azure infrastructure with Terraform.

![Architecture Image](https://user-images.githubusercontent.com/1248896/189254453-439dd558-fc6c-4377-b01c-d5e54cc49403.png)

## Setup Azure dependencies:
1. **Setup Azure Identity**: 
    - Manage differnet mangement group in Azure Active Directory that is required that has permissions to deploy within your Azure subscription. 
    
    - Take Service Principle from different azure account depending on the environment.
    Get the azure account specific Secret Keys to connect with github.    

2. **Setup Azure Storage Account to setup remote setup**: 
    - Need to setup storage account,container using environment specific subscription.
    Remote state dependencies have been defined in provider.tf file in root module.

## Setup Github Repository:
1. **Setup Github Repository**: 
    - Create a single repo and multi env branch project in GitHub 
    - **Name the branches**: `dev`, `qa`, `prod` depending on the environment you're creating
    - **GitHub repository**: `cloud-infrastructure-assetron`

2. **set up the environments to restrict at work flow level**
  - Create multiple environment gorups based on roles and access.
    - `dev_plan`: `Group that has access to do plan operation in dev branch`
    - `dev_planapply`: `Group that has access to do plan and apply operation in dev branch`
    - `qa_plan`: `Group that has access to do plan operation in qa branch`
    - `qa_planapply`: `Group that has access to do plan and apply operation in qa branch`
    - `prod_plan`: `Group that has access to do plan operation in prod branch`
    - `prod_planapply`: `Group that has access to do plan and apply operation in prod branch`
  
  - Add the below **Environment Variables**
    - `ARM_ENV_CLIENT_ID`: `app id`
    - `ARM_ENV_CLIENT_SECRET`: `password`
    - `ARM_ENV_SUBSCRIPTION_ID`: `subscription id`
    - `ARM_ENV_TENANT_ID`: `tenant id`
    - We can replace ENV with DEV OR QA OR PROD as per our configurations.

  - Add the respective **Reviewers**
    - Need to add `reviwers` so that before doing any workflow operation it will ask for approval.
    - We can follow the steps here  [](.github/workflows/tf-unit-tests.yml)https://docs.github.com/en/actions/managing-workflow-runs/reviewing-deployments

3. **set up the environments to restrict at work flow level**
  - Use branch protection settings based on roles and access at branch level.

## Implemention:
1. Setup **root module** as a entry point 
1. Keep the config files specific to environment in config folder
1. use modules folder and start writting nested modules like under the same


## Integration and Deployment
1. Create a new feature branch from dev to do the hotfix or new development tasks.
2. Once we are pushing any new changes in dev feature branches it will trigger a github action flow to first create a plan and once that is done then the next it will ask to give reviwers approval.
3. After reviwers approval we can able to run the apply workflow and deploy the azure resources.
4. After each successful dev feature branchs we can Create a Pull Request (PR) in GitHub to merge our changes to dev environment.
5. It will again do the plan and apply run with approval process and after each successful dev run 
   we will be able to set up the dev infrastructure in azure.
6. After each successful dev run,when we are merging the changes to qa it will again run the plan and apply workflow with approval process in qa environement.
7. Similaryly a new feature branch from qa can help us to do the hotfix in qa branches.
8. After each successful qa run we can merge the changes to prod.
6. On new pull request it will again run the plan and apply workflow with approval process to deploy in prod environement.Terraform plan will run to generate a preview of the changes that will happen in your Azure environment so we can verify te resources before deployment.
7. After prod azure resource verification we can manage releases with different tag.
6. Can use backup branches to setup the recovery plan.

## Improvement
1. Unit test setup can be done and along with that log analysis.