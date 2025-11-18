# typed: strong

module HubspotSDK
  module Resources
    class Settings
      class Users
        # New users will only have minimal permissions, which is contacts-base. A welcome
        # email will prompt them to set a password and log in to HubSpot.
        sig do
          params(
            email: String,
            first_name: String,
            last_name: String,
            primary_team_id: String,
            role_id: String,
            secondary_team_ids: T::Array[String],
            send_welcome_email: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::PublicUser)
        end
        def create(
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
          send_welcome_email: nil,
          request_options: {}
        )
        end

        # Modifies a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        sig do
          params(
            user_id: String,
            id_property:
              HubspotSDK::Settings::PublicUserUpdate::IDProperty::OrSymbol,
            first_name: String,
            last_name: String,
            primary_team_id: String,
            role_id: String,
            secondary_team_ids: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::PublicUser)
        end
        def update(
          # Path param: Identifier of user to retrieve
          user_id,
          # Query param: The name of a property with unique user values. Valid values are
          # `USER_ID`(default) or `EMAIL`
          id_property: nil,
          # Body param: The first name of the user.
          first_name: nil,
          # Body param: The last name of the user.
          last_name: nil,
          # Body param: The user's primary team.
          primary_team_id: nil,
          # Body param: The user's role.
          role_id: nil,
          # Body param: The user's additional teams.
          secondary_team_ids: nil,
          request_options: {}
        )
        end

        # Retrieves a list of users from an account
        sig do
          params(
            after: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Settings::PublicUser]
          )
        end
        def list(
          # Results will display maximum 100 users per page. Additional results will be on
          # the next page.
          after: nil,
          # The number of users to retrieve
          limit: nil,
          request_options: {}
        )
        end

        # Removes a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        sig do
          params(
            user_id: String,
            id_property:
              HubspotSDK::Settings::UserDeleteParams::IDProperty::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Identifier of user to delete
          user_id,
          # The name of a property with unique user values. Valid values are
          # `USER_ID`(default) or `EMAIL`
          id_property: nil,
          request_options: {}
        )
        end

        # Retrieves a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        sig do
          params(
            user_id: String,
            id_property:
              HubspotSDK::Settings::UserGetParams::IDProperty::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::PublicUser)
        end
        def get(
          # Identifier of user to retrieve
          user_id,
          # The name of a property with unique user values. Valid values are
          # `USER_ID`(default) or `EMAIL`
          id_property: nil,
          request_options: {}
        )
        end

        # Retrieves the roles on an account
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CollectionResponsePublicPermissionSetNoPaging
          )
        end
        def list_roles(request_options: {})
        end

        # View teams for this account
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CollectionResponsePublicTeamNoPaging
          )
        end
        def list_teams(request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
