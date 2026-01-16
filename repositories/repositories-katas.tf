################################################################################
# 🥋 Kata repositories
################################################################################

module "repository_kata-gilded-rose" {
  source = "./templates"

  github_repository = {
    name         = "kata-gilded-rose"
    description  = "🥋 Gilded Rose Kata."
    homepage_url = "https://kata-log.rocks/gilded-rose-kata"
    topics = [
      "kata"
    ]
  }
}

module "repository_kata-look-and-say-sequence" {
  source = "./templates"

  github_repository = {
    name         = "kata-look-and-say-sequence"
    description  = "🥋 Look and say sequence kata."
    homepage_url = "https://en.wikipedia.org/wiki/Look-and-say_sequence"
    topics = [
      "kata"
    ]
  }
}

module "repository_kata-ohce" {
  source = "./templates"

  github_repository = {
    name         = "kata-ohce"
    description  = "🥋 ohce kata."
    homepage_url = "https://kata-log.rocks/ohce-kata"
    topics = [
      "kata"
    ]
  }
}
