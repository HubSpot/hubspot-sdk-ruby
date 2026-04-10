# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        module Tickets
          class BatchUpsertParams < HubSpotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInputUpsert
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubSpotSDK::Crm::Objects::Tickets::BatchUpsertParams,
                  HubSpotSDK::Internal::AnyHash
                )
              end

            sig do
              params(
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(request_options: {})
            end

            sig do
              override.returns({ request_options: HubSpotSDK::RequestOptions })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
