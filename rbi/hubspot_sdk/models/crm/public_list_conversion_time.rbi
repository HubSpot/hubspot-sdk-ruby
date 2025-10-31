# typed: strong

module HubspotSDK
  module Models
    module CRM
      module PublicListConversionTime
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicListConversionDate,
              HubspotSDK::CRM::PublicListConversionInactivity
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::CRM::PublicListConversionTime::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
