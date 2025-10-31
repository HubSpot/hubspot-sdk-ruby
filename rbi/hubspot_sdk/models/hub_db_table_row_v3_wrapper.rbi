# typed: strong

module HubspotSDK
  module Models
    HubDBTableRowV3Wrapper =
      T.let(T.anything, HubspotSDK::Internal::Type::Converter)
  end
end
