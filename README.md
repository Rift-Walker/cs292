cs292
=====

Repo for Cloud Computing group projects

Assignment 2 Testing Log

- Code crashed in line 5 due to "require => Exec["apt-get update"]"
  - Removed the line before testing
- VM ran successfully afterward
- Tested packages: dpkg --get-selections | grep -v deinstall | less
  - Manually scrolled to find all four packages installed
- Tested users: cut -d: -f1 /etc/passwd
  - All four users were there
- Tested directories: cd/home => ls
  - All four user directories were there
  - Tested sub-directories: cd alice => ls, repeat for other 3 users
    - Specified user file and sub-directories were there
- Tested groups: cat /etc/group
  - Specified user groups CS251 and CS292 were there
