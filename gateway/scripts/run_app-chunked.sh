#!/bin/sh

## The variables are set in the docker-compose file. You can run in as well calling the
## docker run --env-file=FILE ...
# SL_TOKEN=token
# SL_LAB_ID=a
# SL_BRANCH_NAME=c

DEBUG=-Dsl.httpDebugLog=yes
LOGGING=-Dsl.log.toConsole=true
PACKAGES="i0.sealights.demo.gateway*"

java -Dsl.log.level=DEBUG "$DEBUG $LOGGING" \
  -Dsl.workspace=. \
  -Dsl.featuresData.codeCoverageManagerVersion=v2 \
  -Dsl.otel.enabled=true -Dsl.otel.loadEmbeddedAgent=true \
  -Dsl.sendInitFootprints=true \
  -Dsl.tags=demo \
  -Dsl.featuresData.enableLineCoverage=false \
  -Dsl.ignoreAutoGeneratedMethods=false \
  -Dsl.ignoreMethodsWithoutLineNumbers=false \
  -Dsl.featuresData.ignoreMethodsWithoutLineNumbers=false \
  -Dsl.featuresData.ignoreAutoGeneratedMethods=false \
  -Dsl.buildMapBatchSize=500 \
  -Dsl.token=eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL0RFVi1hYmVkLXRyYWluaW5nLmF1dGguc2VhbGlnaHRzLmlvLyIsImp3dGlkIjoiREVWLWFiZWQtdHJhaW5pbmcsbmVlZFRvUmVtb3ZlLEFQSUdXLWZmNjcwOWMyLWJmOGItNDE5ZS1iNzhlLWMzOGY0MzljZDI5MywxNjkwNDU4MjM0NTYwIiwic3ViamVjdCI6IlNlYUxpZ2h0c0BhZ2VudCIsImF1ZGllbmNlIjpbImFnZW50cyJdLCJ4LXNsLXJvbGUiOiJhZ2VudCIsIngtc2wtc2VydmVyIjoiaHR0cHM6Ly9kZXYtYWJlZC10cmFpbmluZy1ndy5kZXYuc2VhbGlnaHRzLmNvL2FwaSIsInNsX2ltcGVyX3N1YmplY3QiOiIiLCJpYXQiOjE2OTA0NTgyMzR9.XP3ZVFV1ugzkt6MwuOHX245fcfaoep7GpY0ooTO4knIjzuPXwBfbTjs8VelN3lrbfcZasrMgyM55MBL3UgJ84kSfwjEYn-MPSLGwXqk9pJaMVuEaX7iLa05Wk1zZ9xGS0aTGfQ3U_6Gt2AGbQHvp3H4i77yGKBR2Q87tbagE3faoLyPasGbZg_JCnwxcoD6uY9j7SAnWfMlphFwb_MXoY3gJbnNGSRnCYpNk4HAkEMts9OfgXZ0xtiuPLHv3bOEC3E_yIPE13I4iwiZbcfgukQAvF_LcOHLJ3uNkYTz9hyZoppIJWNjdp4kLrO_gkh7KQiJBEX4pb93SbW7QLLR0pN8-dmRn5sP1PAf2UsFB5Uf5Vea630HJPC8B9FZaVCMw4YtEX3glkwumRqeg9qN7iFE9CGmaoxVlJAEz4KO85or1Hvb3DvRR1951bTR9SkOT5wV5olfDrXEWh5RnZ2f5kCeaCHTV3eC7S6ojDL-rJRm-EKvRZfpXhXHtxt81KSpfnmkL0ta270477vd4Lhn1rgOvP2wi42YU77Ai5O7Y93c2vJarbfFB_e_u3OOweTDjehACvV3UB2FNI8TnENg4oURV7R-fDm0maj1g_tAeEA--GXSHQd3bwjSeNeJ1UjmEKt5OyqITqR3LE1E4pFKkFS3EGDIazN5VZeVH8_fMvuU \
  -Dsl.labId=integ_QaTeam1_1c35_project1 \
  -Dsl.includes="i0.sealights.demo.cart.*" \
  -Dsl.buildName=chunk-004 \
  -Dsl.branchName=QaTeam1 \
  -Dsl.appName=gateway \
  -javaagent:./sl-cd-agent.jar \
  -jar $1