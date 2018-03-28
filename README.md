## Setup Instructions
-----

Clone this repo to your local environment

Install and configure Mu:
```
curl -s https://getmu.io/install.sh | sudo sh
export MU_NAMESPACE=sfo
echo "export MU_NAMESPACE=$MU_NAMESPACE" >> ~/.bashrc
```
Bring up the ECS environment:
`mu env up acceptance`

Create a GitHub developer token at https://github.com/settings/tokens/new
  - Check repo
  - Check admin:repo_hook
  - Select generate token

Bring up the CICD pipeline:
`mu pipeline up`
(paste your github token)

Watch for the deploy to complete:
`mu svc show -w -t`

When all steps have succeeded, look up the ALB url and test the site:
`mu env show acceptance -f shell`
(command-click the URL)
