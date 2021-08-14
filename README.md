# Terraform AWS Provider Sample Module Git Repositories:

**The sub repositories aggregated under my single "container" repository here are curated and maintained by [Hashicorp's terraform-aws-modules GitHub Organization](https://github.com/orgs/terraform-aws-modules/repositories)**

My intent for consolidating all of their excellent sample modules under this singular repository was to provide myself **[@chris-bishop](https://github.com/chris-bishop)** and any other interested members of the DevOps Community a convienent, concise, and comprehensive bootstrap for programming Infrastructure as Code in their local dev environments using Hashicorp Terraform and the AWS Provider.

Whether you are only just entering the IAC arena, or a seasoned veteran enterprise user like myself - having these sample modules all "under one roof" will surely make your learning and development lives easier! :smiley:

----

### Usage

My recommended approach is to "bootstrap" your local environment using the **[simple bash script](https://github.com/chris-bishop/terraform-aws-modules-full/blob/main/gitCloneAllTFAWSSampleRepos.sh)** I have bundled at the root of the repository with the following command line usage to clone all of the sample sub repos in your local dev environment (**Make sure to confirm the default LOCAL_ROOT_DIR value I've specified in my script will work for you, modify as needed**):

```bash
./gitCloneAllTFAWSSampleRepos.sh
```
The above command will create the `LOCAL_ROOT_DIR` on your localhost filesystem if it does not already exist, then iterate over the enclosed array of Terraform AWS Sample Module Repository URLs, performing a git clone for each if the given sub repository does not exist - OR will attempt to sync existing sub repositories with their master branches if they do already exist on your local filesystem in the specified `LOCAL_ROOT_DIR`.

Review the bash source code for: **[./gitCloneAllTFAWSSampleRepos.sh](https://github.com/chris-bishop/terraform-aws-modules-full/blob/main/gitCloneAllTFAWSSampleRepos.sh)** for further details.

**Cheers - And Happy InfraAsCoding!** :smiley:

----

### Have Questions, Concerns, Ideas, Issues?

Feel free to reach out to me **[@chris-bishop](https://github.com/chris-bishop)** or start a discussion in this repository.

**NOTE - As the source sub repositories are curated and maintained by [Hashicorp's terraform-aws-modules GitHub Organization](https://github.com/orgs/terraform-aws-modules/repositories) - Please log any Issues specific to any of the example AWS Terraform Modules in the corresponding terraform-aws-modules/terraform-aws-XXXXX repository!**