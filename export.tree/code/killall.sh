#!/bin/bash
#
# if setup went wrong, delete everything

[[ "$(read -e -p 'Are you sure you want to delete everything? [yes_sure!/NO]> '; echo $REPLY)" == yes_sure! ]] && echo KILLALLNOW || exit

# delete wrong input & output RIA stores + aliases
rm -rf /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/ddb/688bc-a176-4550-9e4a-4f1aa2ca3268
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/alias/ds006401-mriqc
rm -rf https://hub.trr379.de/f.hoffstaedter/ds006401-mriqc
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/alias/ds006401-mriqc

# remove faulty dataset 
cd ..
datalad drop --what datasets --reckless kill -r -d ds006401-mriqc
