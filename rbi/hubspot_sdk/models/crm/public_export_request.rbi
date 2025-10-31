# typed: strong

module HubspotSDK
  module Models
    module CRM
      module PublicExportRequest
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicExportViewRequest,
              HubspotSDK::CRM::PublicExportListRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::CRM::PublicExportRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
