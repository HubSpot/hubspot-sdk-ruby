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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(String) }
        attr_accessor :user_id

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
          id:,
          created_at:,
          name:,
          updated_at:,
          user_id:,
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
