# typed: strong

module HubspotSDK
  module Models
    module Cms
      PublicAccessRule =
        T.let(T.anything, HubspotSDK::Internal::Type::Converter)
    end
  end
end
