# typed: strong

module HubspotSDK
  module Models
    module Crm
      module PublicExportRequest
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicExportViewRequest,
              HubspotSDK::Crm::PublicExportListRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Crm::PublicExportRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
