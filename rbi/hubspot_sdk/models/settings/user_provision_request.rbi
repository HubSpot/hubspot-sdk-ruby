# typed: strong

module HubspotSDK
  module Models
    module Settings
      class UserProvisionRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::UserProvisionRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The user's email.
        sig { returns(String) }
        attr_accessor :email

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

        # The user's primary team.
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

        # Whether to send a welcome email.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_welcome_email

        sig { params(send_welcome_email: T::Boolean).void }
        attr_writer :send_welcome_email

        # A user creation request
        sig do
          params(
            email: String,
            first_name: String,
            last_name: String,
            primary_team_id: String,
            role_id: String,
            secondary_team_ids: T::Array[String],
            send_welcome_email: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The user's email.
          email:,
          # The user's first name.
          first_name: nil,
          # The user's last name.
          last_name: nil,
          # The user's primary team.
          primary_team_id: nil,
          # The user's role.
          role_id: nil,
          # The user's additional teams.
          secondary_team_ids: nil,
          # Whether to send a welcome email.
          send_welcome_email: nil
        )
        end

        sig do
          override.returns(
            {
              email: String,
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
