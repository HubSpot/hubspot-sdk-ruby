# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        module Communications
          class BatchUpsertParams < HubspotSDK::Models::CRM::BatchInputSimplePublicObjectBatchInputUpsert
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Objects::Communications::BatchUpsertParams,
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
