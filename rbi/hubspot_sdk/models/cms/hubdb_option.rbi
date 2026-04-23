# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class HubdbOption < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::HubdbOption, HubSpotSDK::Internal::AnyHash)
          end

        # The unique ID of the option.
        sig { returns(String) }
        attr_accessor :id

        # The timestamp when the option was created, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :created_at

        # A user-friendly label that identifies the option.
        sig { returns(String) }
        attr_accessor :label

        # An internal name assigned to the option, distinct from the label.
        sig { returns(String) }
        attr_accessor :name

        # The order in which the option appears, represented as an integer.
        sig { returns(Integer) }
        attr_accessor :order

        # Indicates the category or data type of the option (e.g., string, number).
        sig { returns(String) }
        attr_accessor :type

        # The timestamp when the option was last updated, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(HubSpotSDK::Cms::SimpleUser)) }
        attr_reader :created_by

        sig { params(created_by: HubSpotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :created_by

        # The ID of the user who created the option.
        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by_user_id

        sig { params(created_by_user_id: Integer).void }
        attr_writer :created_by_user_id

        sig { returns(T.nilable(HubSpotSDK::Cms::SimpleUser)) }
        attr_reader :updated_by

        sig { params(updated_by: HubSpotSDK::Cms::SimpleUser::OrHash).void }
        attr_writer :updated_by

        # The ID of the user who last updated the option.
        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by_user_id

        sig { params(updated_by_user_id: Integer).void }
        attr_writer :updated_by_user_id

        # A HubSpot property option
        sig do
          params(
            id: String,
            created_at: Time,
            label: String,
            name: String,
            order: Integer,
            type: String,
            updated_at: Time,
            created_by: HubSpotSDK::Cms::SimpleUser::OrHash,
            created_by_user_id: Integer,
            updated_by: HubSpotSDK::Cms::SimpleUser::OrHash,
            updated_by_user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the option.
          id:,
          # The timestamp when the option was created, in ISO 8601 format.
          created_at:,
          # A user-friendly label that identifies the option.
          label:,
          # An internal name assigned to the option, distinct from the label.
          name:,
          # The order in which the option appears, represented as an integer.
          order:,
          # Indicates the category or data type of the option (e.g., string, number).
          type:,
          # The timestamp when the option was last updated, in ISO 8601 format.
          updated_at:,
          created_by: nil,
          # The ID of the user who created the option.
          created_by_user_id: nil,
          updated_by: nil,
          # The ID of the user who last updated the option.
          updated_by_user_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              label: String,
              name: String,
              order: Integer,
              type: String,
              updated_at: Time,
              created_by: HubSpotSDK::Cms::SimpleUser,
              created_by_user_id: Integer,
              updated_by: HubSpotSDK::Cms::SimpleUser,
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
