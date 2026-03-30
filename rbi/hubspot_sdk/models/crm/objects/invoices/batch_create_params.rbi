# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Invoices
          class BatchCreateParams < HubspotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInputForCreate
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Objects::Invoices::BatchCreateParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              params(
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(request_options: {})
            end

            sig do
              override.returns({ request_options: HubspotSDK::RequestOptions })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
