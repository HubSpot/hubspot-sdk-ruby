# typed: strong

module HubspotSDK
  module Models
    module Cms
      HubDBTableRowV3Wrapper =
        T.let(T.anything, HubspotSDK::Internal::Type::Converter)
    end
  end
end
