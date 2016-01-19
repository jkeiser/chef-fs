# ChefFS
[![Build Status Master](https://travis-ci.org/chef/chef-fs.svg?branch=master)](https://travis-ci.org/chef/chef-fs)
[![Build Status Master](https://ci.appveyor.com/api/projects/status/github/chef/chef-fs?branch=master&svg=true&passingText=master%20-%20Ok&pendingText=master%20-%20Pending&failingText=master%20-%20Failing)](https://ci.appveyor.com/project/Chef/chef-fs/branch/master)


# DESCRIPTION:

ChefFS is an easy Chef API that will let you talk to the server, the local repository
and even an in-memory file system for testing! It is meant to be used in chef-zero, local mode, knife diff/upload/download/backup/restore, and cheffish.

# USAGE:

```ruby
git clone https://github.com/jkeiser/chef-fs
bundle install
bundle exec "require 'chef_fs'; puts ChefFS.list('/nodes')"
```

# DEVELOPMENT:

Before working on the code, if you plan to contribute your changes, you
should read the contributing guidelines:

* https://github.com/chef/chef-fs/blob/master/CONTRIBUTING.md

The basic process for contributing is:

1. Fork this repo on GitHub.
2. Create a feature branch for your work.
3. Make your change, including tests.
4. Submit a pull request.

## Spec Testing:

We use RSpec for unit/spec tests. To run the full suite, run:

    bundle exec rake spec

You can run individual test files by running the rspec executable:

    bundle exec rspec spec/unit/FILE.rb

## Rake Tasks

Ohai has some Rake tasks for doing various things.

    rake -T
    rake clobber_package  # Remove package products
    rake gem              # Build the gem file chef-fs-$VERSION.gem
    rake install          # install the gem locally
    rake make_spec        # create a gemspec file
    rake package          # Build all the packages
    rake repackage        # Force a rebuild of the package files
    rake spec             # Run specs

    ($VERSION is the current version, from the GemSpec in Rakefile)

# RELEASING

To release a new version:

1. Ensure the CHANGELOG is up to date.
2. Ship DOC_CHANGES (put the docs wherever they belong) and empty it out.
3. Update the version number in `version.rb`
4. `bundle exec rake release` (this will create a git tag for the version, push git commits and tags, and build and push the `.gem` file to [rubygems.org](https://rubygems.org)

# LINKS:

Source:

* http://github.com/chef/chef-fs/tree/master

Issues:

* https://github.com/chef/chef-fs/issues

# LICENSE:

<ChefFS> - a chef project

* Author:: John Keiser (<jkeiser@chef.io>)
* Copyright:: Copyright (c) 2008-2015 Chef Software, Inc.
* License:: Apache License, Version 2.0

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
