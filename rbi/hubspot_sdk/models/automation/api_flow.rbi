# typed: strong

module HubspotSDK
  module Models
    module Automation
      module APIFlow
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIContactFlow,
              HubspotSDK::Automation::APIPlatformFlow
            )
          end

        sig do
          override.returns(T::Array[HubspotSDK::Automation::APIFlow::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
