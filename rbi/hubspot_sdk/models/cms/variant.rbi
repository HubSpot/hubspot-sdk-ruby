# typed: strong

module HubSpotSDK
  module Models
    module Cms
      Variant = T.let(T.anything, HubSpotSDK::Internal::Type::Converter)
    end
  end
end
