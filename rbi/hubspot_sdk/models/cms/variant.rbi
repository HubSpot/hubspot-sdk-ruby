# typed: strong

module HubspotSDK
  module Models
    module Cms
      Variant = T.let(T.anything, HubspotSDK::Internal::Type::Converter)
    end
  end
end
