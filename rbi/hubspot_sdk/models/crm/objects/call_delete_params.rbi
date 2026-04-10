# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        class CallDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Objects::CallDeleteParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :call_id

          sig do
            params(
              call_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(call_id:, request_options: {})
          end

          sig do
            override.returns(
              { call_id: String, request_options: HubSpotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
