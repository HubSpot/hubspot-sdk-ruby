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

        # A list of all association labels.
        sig { returns(T::Array[String]) }
        attr_accessor :all_labels

        sig { returns(HubspotSDK::Crm::ObjectTypeDefinition) }
        attr_reader :from_object_type

        sig do
          params(
            from_object_type: HubspotSDK::Crm::ObjectTypeDefinition::OrHash
          ).void
        end
        attr_writer :from_object_type

        # The maximum number of association labels allowed.
        sig { returns(Integer) }
        attr_accessor :limit

        # The percentage of the association label limit that has been used.
        sig { returns(Float) }
        attr_accessor :percentage

        sig { returns(HubspotSDK::Crm::ObjectTypeDefinition) }
        attr_reader :to_object_type

        sig do
          params(
            to_object_type: HubspotSDK::Crm::ObjectTypeDefinition::OrHash
          ).void
        end
        attr_writer :to_object_type

        # The current number of association labels used.
        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(
            all_labels: T::Array[String],
            from_object_type: HubspotSDK::Crm::ObjectTypeDefinition::OrHash,
            limit: Integer,
            percentage: Float,
            to_object_type: HubspotSDK::Crm::ObjectTypeDefinition::OrHash,
            usage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of all association labels.
          all_labels:,
          from_object_type:,
          # The maximum number of association labels allowed.
          limit:,
          # The percentage of the association label limit that has been used.
          percentage:,
          to_object_type:,
          # The current number of association labels used.
          usage:
        )
        end

        sig do
          override.returns(
            {
              all_labels: T::Array[String],
              from_object_type: HubspotSDK::Crm::ObjectTypeDefinition,
              limit: Integer,
              percentage: Float,
              to_object_type: HubspotSDK::Crm::ObjectTypeDefinition,
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
