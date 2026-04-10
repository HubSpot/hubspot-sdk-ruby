# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module AssociationsSchema
        class LabelDeleteLabelParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::AssociationsSchema::LabelDeleteLabelParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :from_object_type

          sig { returns(String) }
          attr_accessor :to_object_type

          sig { returns(Integer) }
          attr_accessor :association_type_id

          sig do
            params(
              from_object_type: String,
              to_object_type: String,
              association_type_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            from_object_type:,
            to_object_type:,
            association_type_id:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                from_object_type: String,
                to_object_type: String,
                association_type_id: Integer,
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
