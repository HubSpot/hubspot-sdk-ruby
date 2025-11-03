# typed: strong

module HubspotSDK
  module Models
    module Crm
      class AssociationLabelLimitResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::AssociationLabelLimitResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :all_labels

        # Defines an object type.
        sig { returns(HubspotSDK::Crm::Objects::ObjectTypeDefinition) }
        attr_reader :from_object_type

        sig do
          params(
            from_object_type:
              HubspotSDK::Crm::Objects::ObjectTypeDefinition::OrHash
          ).void
        end
        attr_writer :from_object_type

        sig { returns(Integer) }
        attr_accessor :limit

        sig { returns(Float) }
        attr_accessor :percentage

        # Defines an object type.
        sig { returns(HubspotSDK::Crm::Objects::ObjectTypeDefinition) }
        attr_reader :to_object_type

        sig do
          params(
            to_object_type:
              HubspotSDK::Crm::Objects::ObjectTypeDefinition::OrHash
          ).void
        end
        attr_writer :to_object_type

        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(
            all_labels: T::Array[String],
            from_object_type:
              HubspotSDK::Crm::Objects::ObjectTypeDefinition::OrHash,
            limit: Integer,
            percentage: Float,
            to_object_type:
              HubspotSDK::Crm::Objects::ObjectTypeDefinition::OrHash,
            usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          all_labels:,
          # Defines an object type.
          from_object_type:,
          limit:,
          percentage:,
          # Defines an object type.
          to_object_type:,
          usage:
        )
        end

        sig do
          override.returns(
            {
              all_labels: T::Array[String],
              from_object_type: HubspotSDK::Crm::Objects::ObjectTypeDefinition,
              limit: Integer,
              percentage: Float,
              to_object_type: HubspotSDK::Crm::Objects::ObjectTypeDefinition,
              usage: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
