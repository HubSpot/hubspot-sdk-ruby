# typed: strong

module HubspotSDK
  module Models
    module Settings
      class PublicUser < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::PublicUser,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The user's unique ID.
        sig { returns(String) }
        attr_accessor :id

        # The user's email.
        sig { returns(String) }
        attr_accessor :email

        # A list of role IDs assigned to the user.
        sig { returns(T::Array[String]) }
        attr_accessor :role_ids

        # Whether the user has super admin privileges.
        sig { returns(T::Boolean) }
        attr_accessor :super_admin

        # The user's first name.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # The user's last name.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # The user's primary team
        sig { returns(T.nilable(String)) }
        attr_reader :primary_team_id

        sig { params(primary_team_id: String).void }
        attr_writer :primary_team_id

        # The user's role.
        sig { returns(T.nilable(String)) }
        attr_reader :role_id

        sig { params(role_id: String).void }
        attr_writer :role_id

        # The user's additional teams.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :secondary_team_ids

        sig { params(secondary_team_ids: T::Array[String]).void }
        attr_writer :secondary_team_ids

        # Whether a welcome email was sent to the user. This value will only be populated
        # in response to a provisioning request. Subsequent queries will be false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_welcome_email

        sig { params(send_welcome_email: T::Boolean).void }
        attr_writer :send_welcome_email

        sig do
          params(
            id: String,
            email: String,
            role_ids: T::Array[String],
            super_admin: T::Boolean,
            first_name: String,
            last_name: String,
            primary_team_id: String,
            role_id: String,
            secondary_team_ids: T::Array[String],
            send_welcome_email: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The user's unique ID.
          id:,
          # The user's email.
          email:,
          # A list of role IDs assigned to the user.
          role_ids:,
          # Whether the user has super admin privileges.
          super_admin:,
          # The user's first name.
          first_name: nil,
          # The user's last name.
          last_name: nil,
          # The user's primary team
          primary_team_id: nil,
          # The user's role.
          role_id: nil,
          # The user's additional teams.
          secondary_team_ids: nil,
          # Whether a welcome email was sent to the user. This value will only be populated
          # in response to a provisioning request. Subsequent queries will be false.
          send_welcome_email: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email: String,
              role_ids: T::Array[String],
              super_admin: T::Boolean,
              first_name: String,
              last_name: String,
              primary_team_id: String,
              role_id: String,
              secondary_team_ids: T::Array[String],
              send_welcome_email: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
