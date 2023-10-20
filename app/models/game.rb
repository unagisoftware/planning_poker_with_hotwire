class Game < ApplicationRecord
  before_create :set_slug

  private

  def set_slug
    self.slug = SecureRandom.alphanumeric(8)
  end

  def to_param
    slug
  end
end
