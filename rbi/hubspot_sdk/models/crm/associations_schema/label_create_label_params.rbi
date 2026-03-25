# typed: strong

module HubspotSDK
  module Models
    module Crm
      module AssociationsSchema
        class LabelCreateLabelParams < HubspotSDK::Models::Crm::PublicAssociationDefinitionCreateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::AssociationsSchema::LabelCreateLabelParams,
                HubspotSDK::Internal::AnyHash
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
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(from_object_type:, to_object_type:, request_options: {})
          end

          sig do
            override.returns(
              {
                from_object_type: String,
                to_object_type: String,
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
