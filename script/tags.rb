require 'git'

ROOT_DIR = File.expand_path("../tmp/repo", Dir.pwd)

def get_repo_path
  Dir.mkdir(ROOT_DIR) unless File.exists?(ROOT_DIR)
  repo_path = File.join(ROOT_DIR, 'wine')
  repo_path
end

def setup_repo
  repo_url = "git://source.winehq.org/git/wine.git"
  repo_path = get_repo_path
  if not File.exist?(repo_path)
    puts "Cloning wine git repo"
    Git.clone(repo_url, 'wine', :path => ROOT_DIR)
  else
    puts "Wine repo available in #{repo_path}"
  end
end

def list_tags
  repo_path = get_repo_path
  repo = Git.open(repo_path)
  tags = {}
  repo.tags.each do |tag|
    tag_name = tag.name
    if /wine-\d\.\d+\.\d+/ =~ tag_name
      tags[tag_name] = tag.objectish
    end
  end
  tags
end

setup_repo
tags = list_tags

tag_name = tags.keys[0]
puts tag_name
first_tag = tags[tag_name]
print first_tag
