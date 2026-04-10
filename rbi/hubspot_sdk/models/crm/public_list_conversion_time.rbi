# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module PublicListConversionTime
        extend HubSpotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicListConversionDate,
              HubSpotSDK::Crm::PublicListConversionInactivity
            )
          end

        sig do
          override.returns(
            T::Array[HubSpotSDK::Crm::PublicListConversionTime::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
