# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ValueWithTimestamp < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ValueWithTimestamp,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The property type.
        sig { returns(String) }
        attr_accessor :source_type

        # The timestamp when the property was updated, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The property value.
        sig { returns(String) }
        attr_accessor :value

        # The unique ID of the property.
        sig { returns(T.nilable(String)) }
        attr_reader :source_id

        sig { params(source_id: String).void }
        attr_writer :source_id

        # A human-readable label.
        sig { returns(T.nilable(String)) }
        attr_reader :source_label

        sig { params(source_label: String).void }
        attr_writer :source_label

        # The ID of the user who last updated the property.
        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by_user_id

        sig { params(updated_by_user_id: Integer).void }
        attr_writer :updated_by_user_id

        # Property model that includes timestamp.
        sig do
          params(
            source_type: String,
            timestamp: Time,
            value: String,
            source_id: String,
            source_label: String,
            updated_by_user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The property type.
          source_type:,
          # The timestamp when the property was updated, in ISO 8601 format.
          timestamp:,
          # The property value.
          value:,
          # The unique ID of the property.
          source_id: nil,
          # A human-readable label.
          source_label: nil,
          # The ID of the user who last updated the property.
          updated_by_user_id: nil
        )
        end

        sig do
          override.returns(
            {
              source_type: String,
              timestamp: Time,
              value: String,
              source_id: String,
              source_label: String,
              updated_by_user_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
