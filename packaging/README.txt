Debian/Ubuntu/...
1. Add dependencies to debian/DEBIAN/control
2. Add versions to dependencies with apt-file search <required_binary> and apt-cache showpkg <package_containing_binary>
2. Bump version number in package.sh
