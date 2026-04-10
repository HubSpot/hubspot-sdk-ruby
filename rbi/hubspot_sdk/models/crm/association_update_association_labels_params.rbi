# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class AssociationUpdateAssociationLabelsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::AssociationUpdateAssociationLabelsParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(String) }
        attr_accessor :object_id_

        sig { returns(String) }
        attr_accessor :to_object_type

        sig { returns(String) }
        attr_accessor :to_object_id

        sig { returns(T::Array[HubSpotSDK::AssociationSpec]) }
        attr_accessor :body

        sig do
          params(
            object_type: String,
            object_id_: String,
            to_object_type: String,
            to_object_id: String,
            body: T::Array[HubSpotSDK::AssociationSpec::OrHash],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type:,
          object_id_:,
          to_object_type:,
          to_object_id:,
          body:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              object_type: String,
              object_id_: String,
              to_object_type: String,
              to_object_id: String,
              body: T::Array[HubSpotSDK::AssociationSpec],
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
