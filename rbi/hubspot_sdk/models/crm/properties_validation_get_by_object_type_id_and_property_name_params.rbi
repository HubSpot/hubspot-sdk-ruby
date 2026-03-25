# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PropertiesValidationGetByObjectTypeIDAndPropertyNameParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDAndPropertyNameParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :property_name

        sig do
          params(
            object_type_id: String,
            property_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(object_type_id:, property_name:, request_options: {})
        end

        sig do
          override.returns(
            {
              object_type_id: String,
              property_name: String,
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
