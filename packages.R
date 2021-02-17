options(repos = c(
  ropensci = 'https://ropensci.r-universe.dev',
  CRAN = 'https://cloud.r-project.org'))

# Install some packages
install.packages('ssh')



# The 'r-lib' universe
# Enable this universe
options(repos = c(
  rlib = 'https://r-lib.r-universe.dev',
  CRAN = 'https://cloud.r-project.org'))

# Install some packages
install.packages('devtools')
