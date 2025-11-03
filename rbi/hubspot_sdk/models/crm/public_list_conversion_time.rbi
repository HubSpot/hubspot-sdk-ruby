# typed: strong

module HubspotSDK
  module Models
    module Crm
      module PublicListConversionTime
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicListConversionDate,
              HubspotSDK::Crm::PublicListConversionInactivity
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Crm::PublicListConversionTime::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
