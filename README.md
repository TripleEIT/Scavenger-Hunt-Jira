# Scavenger Hunt

A forge based Atlassian Scavenger Hunt

The content was created for the [2023 Devs Unleashed Hackathon](https://devpost.com/software/atlassian-scavenger-hunt)
[See it on YouTube](https://youtu.be/GaE_KIgOSKU)


## Licensing Testing Notes
You can then override the license state in both tunnelling and in development/staging with an environment variable:

 - When tunnelling, export FORGE_USER_VAR_LICENSE_OVERRIDE=<active|inactive> before launching the tunnel.
 - In development or staging, run forge variables set -e <environment> LICENSE_OVERRIDE <active|inactive>.

Please make sure you check the value of context in an invocation context, because environment variables and the context object are not accessible during the snapshot context.

## Source Licensing
This project is Open Source under the GPL-3 license, which means that it can be used for anything. However, there is no warranty or support provided.

## "as is" without any warranty or support
Please note that this project is provided "as is" without any warranty, support, or other coverage of any kind, whether express or implied, including but not limited to the implied warranties of merchantability, fitness for a particular purpose, and non-infringement. The authors of this project, including Triple E IT, LLC and any individual authors, make no representations or warranties of any kind, either express or implied, as to the operation of the project, the accuracy or completeness of the information, materials, or content included in this project, or the functionality or availability of the project.

Furthermore, the authors of this project, including Triple E IT, LLC and any individual authors, will not be liable for any damages of any kind arising from the use of this project, including but not limited to direct, indirect, incidental, punitive, and consequential damages, even if they have been advised of the possibility of such damages. You are solely responsible for any use or reliance on this project, and you assume all risks associated with its use.

Please also note that there is no support provided for this project. The authors of this project, including Triple E IT, LLC and any individual authors, will not provide any technical assistance or support for issues related to the project, including but not limited to installation, configuration, or usage. You are solely responsible for understanding and using the project, and any issues or difficulties you encounter will be your responsibility to resolve.