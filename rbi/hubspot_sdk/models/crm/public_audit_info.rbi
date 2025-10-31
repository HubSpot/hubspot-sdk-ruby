# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicAuditInfo < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicAuditInfo,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :action

        sig { returns(String) }
        attr_accessor :identifier

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :from_user_id

        sig { params(from_user_id: Integer).void }
        attr_writer :from_user_id

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(T.anything)) }
        attr_reader :raw_object

        sig { params(raw_object: T.anything).void }
        attr_writer :raw_object

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
          action:,
          identifier:,
          portal_id:,
          from_user_id: nil,
          message: nil,
          raw_object: nil,
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
