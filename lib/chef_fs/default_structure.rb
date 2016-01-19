class Defaults
  path '/organizations/*/'
  path '/organizations/*/clients/\1-validator'
end

class DefaultValues
  path '/organizations/*' do |organization_name|
  end
  path '/organizations/*/nodes/*' do |organization_name, node_name|
  end
end

class ChefObject < Chef::Resource
end


# pure data (repository)

# server api

module ChefFS
  def self.server
  end
  def self.repository
  end

  class Root < ChefObject
    property :organizations, ChefChildren[Organization]
    property :users, ChefChildren[User]

    property :license
    property :server_api_version

    def license
    end
    def server_api_version
    end
    def status
    end
    def authenticate_user
    end
    def system_recovery
    end
  end

  class Organization < ChefObject
    property :association_requests, ChefChildren[AssociationRequest]
    property :clients, ChefChildren[Client]
    property :cookbooks, ChefChildren[Cookbooks]
    property :cookbook_artifacts, ChefChildren[Cookbooks]
    property :containers, ChefChildren[Container]
    # property :controls
    property :data, ChefChildren[DataBag]
    property :environments, ChefChildren[Environment]
    property :groups, ChefChildren[Group]
    property :nodes, ChefChildren[Node]
    property :policies, ChefChildren[Policy]
    property :policy_groups, ChefChildren[PolicyGroup]
    property :roles, ChefChildren[Role]
    property :sandboxes, ChefChildren[Sandbox]
    property :search, ChefChildren[SearchIndex]
    property :users, ChefChildren[User]

    property :principals, ChefChildren[Principal]
  end
end
    class Organization < ChefObject
      property :name, ChefName, name_property: true
      property :full_name, String
      property :guid, String

      class AssociationRequest < ChefObject
      end

      class Client < ChefObject
      end

      class Node < ChefObject
        property :name, ChefName, name_property: true
      end

      class Role < ChefObject
      end

      class

    end
    class User < ChefObject
    end
  end
