# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module AssociationsSchema
        class LabelCreateLabelParams < HubSpotSDK::Models::Crm::PublicAssociationDefinitionCreateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::AssociationsSchema::LabelCreateLabelParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :from_object_type

          sig { returns(String) }
          attr_accessor :to_object_type

          sig do
            params(
              from_object_type: String,
              to_object_type: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(from_object_type:, to_object_type:, request_options: {})
          end

          sig do
            override.returns(
              {
                from_object_type: String,
                to_object_type: String,
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
