# typed: strong

module HubSpotSDK
  module Models
    module Cms
      Variant =
        T.let(
          HubSpotSDK::Internal::Type::HashOf[
            HubSpotSDK::Internal::Type::Unknown
          ],
          HubSpotSDK::Internal::Type::Converter
        )
    end
  end
end
