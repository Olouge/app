#!/bin/bash

set -e

make TEST setup up
make TEST run-tests codecept_opts='unit prod --html=_report_unit.html'
make TEST run-tests codecept_opts='functional prod --html=_report_acceptance.html'
make TEST run-tests codecept_opts='acceptance prod --html=_report_acceptance.html'

exit 0
