#!/bin/bash

echo Starting Scrip
echo Searching SonnarQueb AnalysisId in $1
grep "/api/ce/task?id=" $1 | sed s/.*id=//



