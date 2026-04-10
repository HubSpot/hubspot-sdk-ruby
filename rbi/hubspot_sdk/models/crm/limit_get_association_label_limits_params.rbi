# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class LimitGetAssociationLabelLimitsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::LimitGetAssociationLabelLimitsParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :from_object_type_id

        sig { params(from_object_type_id: String).void }
        attr_writer :from_object_type_id

        sig { returns(T.nilable(String)) }
        attr_reader :to_object_type_id

        sig { params(to_object_type_id: String).void }
        attr_writer :to_object_type_id

        sig do
          params(
            from_object_type_id: String,
            to_object_type_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          from_object_type_id: nil,
          to_object_type_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              from_object_type_id: String,
              to_object_type_id: String,
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
