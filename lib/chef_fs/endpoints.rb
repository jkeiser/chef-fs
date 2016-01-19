<<-EOM
/_status: [get]
/authenticate_user: [post]
/license: [get]
/organizations: [get,post]
/organizations/{organization}: [get,put,delete]
/organizations/{organization}/organization/_acl: [get]
/organizations/{organization}/organization/_acl/{permission}: [put]
/organizations/{organization}/association_requests: [get,post]
/organizations/{organization}/association_requests/{association_request}: [delete]
/organizations/{organization}/clients: [get,post]
/organizations/{organization}/clients/{client}: [get,put,delete]
/organizations/{organization}/clients/keys: [get,post]
/organizations/{organization}/clients/keys/{key}: [get,put,delete]
/organizations/{organization}/clients/{client}/_acl: [get]
/organizations/{organization}/clients/{client}/_acl/{permission}: [put]
/organizations/{organization}/containers: [get,post]
/organizations/{organization}/containers/{container}: [get,delete]
/organizations/{organization}/containers/{container}/_acl: [get]
/organizations/{organization}/containers/{container}/_acl/{permission}: [put]
/organizations/{organization}/controls: [post]
/organizations/{organization}/cookbook_artifacts: [get]
/organizations/{organization}/cookbook_artifacts/{cookbook}: [get]
/organizations/{organization}/cookbook_artifacts/{cookbook}/{cookbook_identifier}: [get,put,delete]
/organizations/{organization}/cookbook_artifacts/{cookbook}/_acl: [get]
/organizations/{organization}/cookbook_artifacts/{cookbook}/_acl/{permission}: [put]
/organizations/{organization}/cookbook_artifacts/_latest: [get]
/organizations/{organization}/cookbook_artifacts/_recipes: [get]
/organizations/{organization}/cookbooks: [get]
/organizations/{organization}/cookbooks/{cookbook}: [get]
/organizations/{organization}/cookbooks/{cookbook}/{cookbook_version}: [get,put,delete]
/organizations/{organization}/cookbooks/{cookbook}/_acl: [get]
/organizations/{organization}/cookbooks/{cookbook}/_acl/{permission}: [put]
/organizations/{organization}/cookbooks/_latest: [get]
/organizations/{organization}/cookbooks/_recipes: [get]
/organizations/{organization}/data: [get,post]
/organizations/{organization}/data/{data_bag}: [get,post,delete]
/organizations/{organization}/data/{data_bag}/{data_bag_item}: [get,put,delete]
/organizations/{organization}/data/{data_bag}/_acl: [get]
/organizations/{organization}/data/{data_bag}/_acl/{permission}: [put]
/organizations/{organization}/environments: [get,post]
/organizations/{organization}/environments/{environment}: [get,put,delete]
/organizations/{organization}/environments/{environment}/cookbooks: [get]
/organizations/{organization}/environments/{environment}/cookbooks/{cookbooks}: [get]
/organizations/{organization}/environments/{environment}/cookbook_versions: [post]
/organizations/{organization}/environments/{environment}/nodes: [get]
/organizations/{organization}/environments/{environment}/recipes: [get]
/organizations/{organization}/environments/{environment}/roles/{role}: [get]
/organizations/{organization}/environments/{environment}/_acl: [get]
/organizations/{organization}/environments/{environment}/_acl/{permission}: [put]
/organizations/{organization}/groups: [get,post]
/organizations/{organization}/groups/{group}: [get,put,delete]
/organizations/{organization}/groups/{group}/_acl: [get]
/organizations/{organization}/groups/{group}/_acl/{permission}: [put]
/organizations/{organization}/nodes: [get,post]
/organizations/{organization}/nodes/{node}: [get,put,delete]
/organizations/{organization}/nodes/{node}/_acl: [get]
/organizations/{organization}/nodes/{node}/_acl/{permission}: [put]
/organizations/{organization}/policies: [get]
/organizations/{organization}/policies/{policy}: [get,delete]
/organizations/{organization}/policies/{policy}/revisions: [post]
/organizations/{organization}/policies/{policy}/revisions/{policy_revision}: [get,delete]
/organizations/{organization}/policy_groups: [get]
/organizations/{organization}/policy_groups/{policy_group}: [get,delete]
/organizations/{organization}/policy_groups/{policy_group}/policies/{policy}: [get,put,delete]
/organizations/{organization}/policy_groups/{policy_group}/_acl: [get]
/organizations/{organization}/policy_groups/{policy_group}/_acl/{permission}: [put]
/organizations/{organization}/nodes: [get,post]
/organizations/{organization}/nodes/{node}: [get,put,delete]
/organizations/{organization}/nodes/{node}/_acl: [get]
/organizations/{organization}/nodes/{node}/_acl/{permission}: [put]
/organizations/{organization}/principals:           !include organizations/principals.yaml
/organizations/{organization}/roles: [get,post]
/organizations/{organization}/roles/{role}: [get,put,delete]
/organizations/{organization}/roles/{role}/_acl: [get]
/organizations/{organization}/roles/{role}/_acl/{permission}: [put]
/organizations/{organization}/roles/{role}/environments: [get]
/organizations/{organization}/roles/{role}/environments/{environment}: [get]
/organizations/{organization}/sandboxes: [post]
/organizations/{organization}/sandboxes/{sandbox}: [put]
/organizations/{organization}/search: [get]
/organizations/{organization}/search/{index}: [get,post]
/organizations/{organization}/users: [get]
/organizations/{organization}/users/{user}: [get]
/server_api_version: [get]
/system_recovery: [post]
/users: [get,post]
/users/{user}: [get,put,delete]
/users/{user}/keys: [get]
/users/{user}/keys/{key}: [get,put,delete]
/users/{user}/association_requests: [get]
/users/{user}/association_requests/count: [get]
/users/{user}/association_requests/{association_request}: [put]
/users/{user}/_acl: [get]
/users/{user}/_acl/{permission}: [put]
EOM