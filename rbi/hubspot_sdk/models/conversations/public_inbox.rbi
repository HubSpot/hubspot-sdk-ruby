# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicInbox < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicInbox,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the inbox.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

        # When the inbox was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The name of the inbox.
        sig { returns(String) }
        attr_accessor :name

        # Specifies whether this refers to a Conversations Inbox or to the Help Desk.
        # Valid values are INBOX or HELP_DESK
        sig { returns(String) }
        attr_accessor :type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        sig do
          params(
            id: String,
            archived: T::Boolean,
            created_at: Time,
            name: String,
            type: String,
            updated_at: Time,
            archived_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the inbox.
          id:,
          archived:,
          # When the inbox was created.
          created_at:,
          # The name of the inbox.
          name:,
          # Specifies whether this refers to a Conversations Inbox or to the Help Desk.
          # Valid values are INBOX or HELP_DESK
          type:,
          updated_at:,
          archived_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              created_at: Time,
              name: String,
              type: String,
              updated_at: Time,
              archived_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
