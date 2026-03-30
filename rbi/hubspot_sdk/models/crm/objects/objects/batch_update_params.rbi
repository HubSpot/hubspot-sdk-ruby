# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Objects
          class BatchUpdateParams < HubspotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInput
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Objects::Objects::BatchUpdateParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :object_type

            sig do
              params(
                object_type: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(object_type:, request_options: {})
            end

            sig do
              override.returns(
                {
                  object_type: String,
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
  end
end
