# typed: strong

module HubspotSDK
  module Models
    module Automation
      module APIFlowCreateRequest
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIContactFlowCreateRequest,
              HubspotSDK::Automation::APIPlatformFlowCreateRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Automation::APIFlowCreateRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
