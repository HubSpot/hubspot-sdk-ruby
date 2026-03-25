# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceLiteResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSequenceLiteResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the sequence.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the sequence was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The name of the sequence.
        sig { returns(String) }
        attr_accessor :name

        # The date and time when the sequence was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The ID of the user associated with the sequence.
        sig { returns(String) }
        attr_accessor :user_id

        # The ID of the folder containing the sequence.
        sig { returns(T.nilable(String)) }
        attr_reader :folder_id

        sig { params(folder_id: String).void }
        attr_writer :folder_id

        sig do
          params(
            id: String,
            created_at: Time,
            name: String,
            updated_at: Time,
            user_id: String,
            folder_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the sequence.
          id:,
          # The date and time when the sequence was created.
          created_at:,
          # The name of the sequence.
          name:,
          # The date and time when the sequence was last updated.
          updated_at:,
          # The ID of the user associated with the sequence.
          user_id:,
          # The ID of the folder containing the sequence.
          folder_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              name: String,
              updated_at: Time,
              user_id: String,
              folder_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
