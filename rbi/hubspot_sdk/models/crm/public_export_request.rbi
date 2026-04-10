# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module PublicExportRequest
        extend HubSpotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicExportViewRequest,
              HubSpotSDK::Crm::PublicExportListRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubSpotSDK::Crm::PublicExportRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
