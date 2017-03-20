class Url < ApplicationRecord
  validates :long_url, format: { with: /https?:\/\/www.\w*.com/, message: "Your link must start with http:// or https://" }

  def shorten
    self.short_url = SecureRandom.hex(4) # 5 is how many char wanted to be randomly create
  end
end
