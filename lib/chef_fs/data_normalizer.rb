module ChefFS

  class DataNormalizer
    def initialize(storage)
      @storage = storage
    end

    include PathRouter
    add_routes(
      "/acls/**" => Acl,
      "/file_store/**" => FileStore,
      "/organizations/{organization}" => {
        "/" => Organization,
        "/association_requests/{user}" => AssociationRequest,
        "/clients/{client}" => {
          "/" => Client,
          "/keys/{key}" => Key,
        },
        "/containers/{container}" => Container,
        "/cookbook_artifacts/{cookbook_artifact}/{cookbook_identifier}" => CookbookArtifact,
        "/cookbooks/{cookbook}/{cookbook_version}" => Cookbook,
        "/data/{data_bag}/{data_bag_item}" => DataBagItem,
        "/environments/{environment}" => Environment,
        "/groups/{group}" => Group,
        "/nodes/{node}" => Node,
        "/policies/{policy}/{policy_revision}" => Policy,
        "/policy_groups/{policy_group}" => PolicyGroup,
        "/roles/{role}" => Role,
        "/sandboxes/{sandbox}" => Sandbox,
        "/users" => Members,
      },
      "/users/{user}" => {
        "/" => User,
        "/keys/{key}" => Key
      }
    )
  end
end
