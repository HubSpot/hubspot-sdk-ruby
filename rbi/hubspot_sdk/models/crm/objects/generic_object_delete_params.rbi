# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Objects
        class GenericObjectDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Objects::GenericObjectDeleteParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_type

          sig { returns(String) }
          attr_accessor :object_id_

          sig do
            params(
              object_type: String,
              object_id_: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(object_type:, object_id_:, request_options: {})
          end

          sig do
            override.returns(
              {
                object_type: String,
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions
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
