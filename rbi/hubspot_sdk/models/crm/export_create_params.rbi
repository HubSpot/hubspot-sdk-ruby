# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ExportCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::ExportCreateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              HubspotSDK::CRM::PublicExportViewRequest,
              HubspotSDK::CRM::PublicExportListRequest
            )
          )
        end
        attr_accessor :public_export_request

        sig do
          params(
            public_export_request:
              T.any(
                HubspotSDK::CRM::PublicExportViewRequest::OrHash,
                HubspotSDK::CRM::PublicExportListRequest::OrHash
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
                  HubspotSDK::CRM::PublicExportViewRequest,
                  HubspotSDK::CRM::PublicExportListRequest
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
