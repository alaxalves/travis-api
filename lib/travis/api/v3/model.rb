module Travis::API::V3
  class Model < ActiveRecord::Base
    include Extensions::BelongsTo
    include Extensions::Preferences

    self.abstract_class = true

    def self.===(other)
      super or (self == Model and other.class.parent == Models)
    end
  end
end
