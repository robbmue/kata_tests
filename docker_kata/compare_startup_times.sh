#!/bin/bash
touch startuptime_comparison
echo runc: > startuptime_comparison
{ time docker run --rm --runtime=runc archlinux sh -c 'uname -r'; } 2>> startuptime_comparison
echo kata-runtime: >> startuptime_comparison
{ time docker run --rm --runtime=kata archlinux sh -c 'uname -r'; } 2>> startuptime_comparison
