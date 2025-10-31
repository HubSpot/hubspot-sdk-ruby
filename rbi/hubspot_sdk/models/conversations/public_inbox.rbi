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

        sig { returns(T::Boolean) }
        attr_accessor :archived

        # Specifies whether this refers to a Conversations Inbox or to the Help Desk.
        # Valid values are INBOX or HELP_DESK
        sig { returns(String) }
        attr_accessor :type

        # The ID of the inbox.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        # When the inbox was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The name of the inbox.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            archived: T::Boolean,
            type: String,
            id: String,
            archived_at: Time,
            created_at: Time,
            name: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          archived:,
          # Specifies whether this refers to a Conversations Inbox or to the Help Desk.
          # Valid values are INBOX or HELP_DESK
          type:,
          # The ID of the inbox.
          id: nil,
          archived_at: nil,
          # When the inbox was created.
          created_at: nil,
          # The name of the inbox.
          name: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              type: String,
              id: String,
              archived_at: Time,
              created_at: Time,
              name: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
