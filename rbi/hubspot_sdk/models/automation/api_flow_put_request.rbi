# typed: strong

module HubspotSDK
  module Models
    module Automation
      module APIFlowPutRequest
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIContactFlowPutRequest,
              HubspotSDK::Automation::APIPlatformFlowPutRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Automation::APIFlowPutRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
