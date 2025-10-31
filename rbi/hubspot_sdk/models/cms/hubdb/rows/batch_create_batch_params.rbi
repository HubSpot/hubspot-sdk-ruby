# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        module Rows
          class BatchCreateBatchParams < HubspotSDK::Models::Cms::BatchInputHubDBTableRowV3Request
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Cms::Hubdb::Rows::BatchCreateBatchParams,
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
