# Scavenger Hunt

A forge based Atlassian Scavenger Hunt

## Licensing Notes
You can then override the license state in both tunnelling and in development/staging with an environment variable:

 - When tunnelling, export FORGE_USER_VAR_LICENSE_OVERRIDE=<active|inactive> before launching the tunnel.
 - In development or staging, run forge variables set -e <environment> LICENSE_OVERRIDE <active|inactive>.

Please make sure you check the value of context in an invocation context, because environment variables and the context object are not accessible during the snapshot context.