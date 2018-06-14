#!/bin/bash
#sh buildbreaksonar.sh sonar.txt c8fa3ca2a1b63fd4209ad71670e16d612daa416e (token)
echo Starting Scrip

echo Searching SonnarQueb AnalysisId in $1 

url=$(grep "/api/ce/task?id=" $1 | sed s/.*h// )

echo "Searching at h$url"

analysisId=$(curl -u $2: "h$url" | jq -r '.task.analysisId')

status=$(curl -u $2: "https://sonarcloud.io/api/qualitygates/project_status?analysisId=$analysisId" | jq -r '.projectStatus.status')

echo "$status"