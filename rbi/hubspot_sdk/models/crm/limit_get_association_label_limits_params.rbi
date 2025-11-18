# typed: strong

module HubspotSDK
  module Models
    module Crm
      class LimitGetAssociationLabelLimitsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::LimitGetAssociationLabelLimitsParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # objectTypeId of the object type on the "from" side of the association
        sig { returns(T.nilable(String)) }
        attr_reader :from_object_type_id

        sig { params(from_object_type_id: String).void }
        attr_writer :from_object_type_id

        # objectTypeId of the object type on the "to" side of the association
        sig { returns(T.nilable(String)) }
        attr_reader :to_object_type_id

        sig { params(to_object_type_id: String).void }
        attr_writer :to_object_type_id

        sig do
          params(
            from_object_type_id: String,
            to_object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # objectTypeId of the object type on the "from" side of the association
          from_object_type_id: nil,
          # objectTypeId of the object type on the "to" side of the association
          to_object_type_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              from_object_type_id: String,
              to_object_type_id: String,
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
