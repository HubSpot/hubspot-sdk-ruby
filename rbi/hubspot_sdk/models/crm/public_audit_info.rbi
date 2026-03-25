# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAuditInfo < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAuditInfo,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The action performed that triggered the audit event.
        sig { returns(String) }
        attr_accessor :action

        # A unique string identifier for the audit event.
        sig { returns(String) }
        attr_accessor :identifier

        # The unique identifier for the HubSpot portal where the audit event occurred.
        sig { returns(Integer) }
        attr_accessor :portal_id

        # The ID of the user who initiated the audit event.
        sig { returns(T.nilable(Integer)) }
        attr_reader :from_user_id

        sig { params(from_user_id: Integer).void }
        attr_writer :from_user_id

        # A descriptive message related to the audit event.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # An object containing the raw data associated with the audit event.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :raw_object

        sig { params(raw_object: T.anything).void }
        attr_writer :raw_object

        # The date and time when the audit event took place.
        sig { returns(T.nilable(Time)) }
        attr_reader :timestamp

        sig { params(timestamp: Time).void }
        attr_writer :timestamp

        sig do
          params(
            action: String,
            identifier: String,
            portal_id: Integer,
            from_user_id: Integer,
            message: String,
            raw_object: T.anything,
            timestamp: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The action performed that triggered the audit event.
          action:,
          # A unique string identifier for the audit event.
          identifier:,
          # The unique identifier for the HubSpot portal where the audit event occurred.
          portal_id:,
          # The ID of the user who initiated the audit event.
          from_user_id: nil,
          # A descriptive message related to the audit event.
          message: nil,
          # An object containing the raw data associated with the audit event.
          raw_object: nil,
          # The date and time when the audit event took place.
          timestamp: nil
        )
        end

        sig do
          override.returns(
            {
              action: String,
              identifier: String,
              portal_id: Integer,
              from_user_id: Integer,
              message: String,
              raw_object: T.anything,
              timestamp: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
