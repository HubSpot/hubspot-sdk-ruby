# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class AssociationLabelLimitResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::AssociationLabelLimitResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A list of all association labels.
        sig { returns(T::Array[String]) }
        attr_accessor :all_labels

        sig { returns(HubSpotSDK::Crm::LimitsObjectTypeDefinition) }
        attr_reader :from_object_type

        sig do
          params(
            from_object_type:
              HubSpotSDK::Crm::LimitsObjectTypeDefinition::OrHash
          ).void
        end
        attr_writer :from_object_type

        # The maximum number of association labels allowed.
        sig { returns(Integer) }
        attr_accessor :limit

        # The percentage of the association label limit that has been used.
        sig { returns(Float) }
        attr_accessor :percentage

        sig { returns(HubSpotSDK::Crm::LimitsObjectTypeDefinition) }
        attr_reader :to_object_type

        sig do
          params(
            to_object_type: HubSpotSDK::Crm::LimitsObjectTypeDefinition::OrHash
          ).void
        end
        attr_writer :to_object_type

        # The current number of association labels used.
        sig { returns(Integer) }
        attr_accessor :usage

        sig do
          params(
            all_labels: T::Array[String],
            from_object_type:
              HubSpotSDK::Crm::LimitsObjectTypeDefinition::OrHash,
            limit: Integer,
            percentage: Float,
            to_object_type: HubSpotSDK::Crm::LimitsObjectTypeDefinition::OrHash,
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
              from_object_type: HubSpotSDK::Crm::LimitsObjectTypeDefinition,
              limit: Integer,
              percentage: Float,
              to_object_type: HubSpotSDK::Crm::LimitsObjectTypeDefinition,
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
