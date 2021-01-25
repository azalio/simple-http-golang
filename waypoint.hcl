# The name of your project. A project typically maps 1:1 to a VCS repository.
# This name must be unique for your Waypoint server. If you're running in
# local mode, this must be unique to your machine.
project = "simple-http-golang"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

# An application to deploy.
app "simple-http-golang" {
  labels = {
    "service" = "simple-http-golang",
    "env" = "dev"
  }
  build {
    use "pack" {}
  }

  deploy { 
    use "docker" {}
  }
}
