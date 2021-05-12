class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
    adjectives = %w[Ancient Creative Dangerous Effective]
    nouns = %w[Highway Intern Jackhammer Lion]
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end
end
