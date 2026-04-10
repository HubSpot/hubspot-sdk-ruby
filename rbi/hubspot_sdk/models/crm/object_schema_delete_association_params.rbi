# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ObjectSchemaDeleteAssociationParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ObjectSchemaDeleteAssociationParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(String) }
        attr_accessor :association_identifier

        sig do
          params(
            object_type: String,
            association_identifier: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(object_type:, association_identifier:, request_options: {})
        end

        sig do
          override.returns(
            {
              object_type: String,
              association_identifier: String,
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
