# required packages
package { ["gcc", "g++", "git", "make"]:
    ensure  => present,
    require => Exec["apt-get update"]
}

# user groups
group { ["users", "cs292", "cs251"]:
    ensure => present
}

# users
user { "alice":
    ensure => present,
    gid => "users",
    groups => "cs292",
    home => "/home/alice"
}
user { "bob":
    ensure => present,
    gid => "users",
    groups => ["cs251","cs292"],
    home => "/home/bob"
}
user { "eve":
    ensure => present,
    gid => "users",
    groups => "cs251",
    home => "/home/eve"
}
user { "david":
    ensure => present,
    gid => "users",
    groups => "cs292",
    home => "/home/david"
}

# user directories
file { "/home/alice":
    ensure => directory,
    mode => "0755",
    owner => "alice",
    group => "users"
}
file { "/home/bob":
    ensure => directory,
    mode => "0555",
    owner => "bob",
    group => "users"
}
file { "/home/eve":
    ensure => directory,
    mode => "0755",
    owner => "eve",
    group => "users"
}
file { "/home/david":
    ensure => directory,
    mode => "0755",
    owner => "david",
    group => "users"
}

# user files
file { ["/home/alice/alice.file",
            "/home/bob/bob.file",
            "/home/eve/eve.file", 
            "/home/david/david.file"]:
    ensure => file
}
file { ["/home/alice/alice.dir",
            "/home/bob/bob.dir",
            "/home/eve/eve.dir", 
            "/home/david/david.dir"]:
    ensure => directory
}


