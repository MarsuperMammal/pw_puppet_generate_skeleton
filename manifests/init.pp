# Class to create the generate information in a cheap imitation of Puppet::ModuleTool::Builder
class pw_puppet_generate_skeleton (
  $author         =   pw_puppet_generate_skeleton::params::author
  $author_email   =   pw_puppet_generate_skeleton::params::author_email
  $base_path      =   pw_puppet_generate_skeleton::params::base_path
) inherits pw_puppet_generate_skeleton::params {
  file { "${base_path}/${dir_list}":
    ensure => 'directory',
  }
  file { "${base_path}/README.md":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/README.md.erb"),
  }
  file { "${base_path}/.fixtures.yml":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/.fixtures.yml.erb"),
  }
  file { "${base_path}/.gitignore":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/.gitignore.erb"),
  }
  file { "${base_path}/Gemfile":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/Gemfile"),
  }
  file { "${base_path}/Rakefile":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/Rakefile"),
  }
  file { "${base_path}/metadata.json.erb":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/metadata.json.erb"),
  }
  file { "${base_path}/manifests/init.pp":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/manifests/init.pp.erb"),
  }
  file { "${base_path}/spec/spec_helper.rb":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/spec/spec_helper.rb"),
  }
  file { "${base_path}/spec/classes/init_spec.rb":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/spec/classes/init.spec.rb.erb"),
  }
  file { "${base_path}/tests/init.pp":
    ensure  => 'file',
    content => template("$skel_path/templates/generate/tests/init.pp.erb"),
  }
} 
