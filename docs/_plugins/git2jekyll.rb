# adapted from https://github.com/yegor256/jekyll-git-hash/blob/master/jekyll-git-hash.rb
# Distributed under the MIT license
# Copyright Yegor Bugayenko, 2014

module Jekyll
  class GitHashGenerator < Generator
    priority :high
    safe true
    def generate(site)
      hash = %x( git rev-parse HEAD ).strip
      site.data['build_revision'] = hash
      jekyll_version = %x(jekyll --version).strip.split(' ')[1]
      site.data['jekyll_version'] = jekyll_version
    end
  end
end
