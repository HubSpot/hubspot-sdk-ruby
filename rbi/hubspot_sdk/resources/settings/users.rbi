# typed: strong

module HubspotSDK
  module Resources
    class Settings
      class Users
        sig do
          params(
            email: String,
            send_welcome_email: T::Boolean,
            first_name: String,
            last_name: String,
            primary_team_id: String,
            role_id: String,
            secondary_team_ids: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::PublicUser)
        end
        def create(
          # The user's email.
          email:,
          # Whether to send a welcome email.
          send_welcome_email:,
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
          # Path param
          user_id,
          # Query param
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
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
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
        def delete(user_id, id_property: nil, request_options: {})
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
        def get(user_id, id_property: nil, request_options: {})
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
