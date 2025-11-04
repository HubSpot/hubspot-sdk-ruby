# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ExportCreateAsyncParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ExportCreateAsyncParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              HubspotSDK::Crm::PublicExportViewRequest,
              HubspotSDK::Crm::PublicExportListRequest
            )
          )
        end
        attr_accessor :public_export_request

        sig do
          params(
            public_export_request:
              T.any(
                HubspotSDK::Crm::PublicExportViewRequest::OrHash,
                HubspotSDK::Crm::PublicExportListRequest::OrHash
              ),
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(public_export_request:, request_options: {})
        end

        sig do
          override.returns(
            {
              public_export_request:
                T.any(
                  HubspotSDK::Crm::PublicExportViewRequest,
                  HubspotSDK::Crm::PublicExportListRequest
                ),
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
