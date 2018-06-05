sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx shane:user:password:set -g User -l User -p iAmAdmin1 --json
sfdx shane:tsp:username:update
sfdx force:data:record:update -s User -w "Firstname=User Lastname=User" -v "Firstname=Admin"
sfdx force:source:push

sfdx force:user:create -f config/userDef/end-user.json --json

sfdx force:org:open