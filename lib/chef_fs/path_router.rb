require 'set'

module ChefFS
  class PathRouter
    def route(path)
      routes.each_pair do |regexp, route|
        match = regexp.match(path)
        if match
          case route
          when Class
            route.new(path, *match.captures)
          when Proc
            route.call(path, *match.captures)
          else
            route
          end
        end
      end
    end

    def self.initial_routes
      @initial_routes ||= {}
    end

    def self.add_route(path)
      case route
      when Array
        routes.each { |child_route| add_route(path, child_route) }
      when Hash
        routes.each_pair { |child_path, child_route| add_route("#{path}#{child_path}", child_route) }
      else
        initial_routes[path_regex(path)] = route
      end
    end

    def self.add_routes(path)
      add_route(path)
    end

    def self.routes
      @routes ||= {}
    end

    def path_regexp(path)
      names = Set.new
      Regexp.new("^" +
        path_array(path).map do |entry|
          entry.gsub(/(\b[A-Z][A-Z0-9_]*\b|{.+}|\*\*|\*)/, proc { |m|
            case m
            when '*'
              # /organizations/*
              '([^/]*)'
            when '**'
              # /organizations/**
              '(.*)'
            else
              # /organizations/ORGANIZATION
              # /organizations/{organization}
              if m[0] == '{'
                m = m[1..-2]
              end
              if names[m]
                "\\k<#{m}>"
              else
                names << m
                "(?<#{m}>[^/]*)"
              end
            end
          })
        end.join("/") +
      "$")
    end

    def path_array(path)
      if path.is_a?(String)
        path = path[1..-1] if path[0] == '/'
        path = path[0..-2] if path[-1] == '/'
        path = path.split("/")
      end
      path
    end
  end
end
