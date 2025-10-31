# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      class Users
        # New users will only have minimal permissions, which is contacts-base. A welcome
        # email will prompt them to set a password and log in to HubSpot.
        #
        # @overload create(email:, first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, secondary_team_ids: nil, send_welcome_email: nil, request_options: {})
        #
        # @param email [String] The created user's email
        #
        # @param first_name [String]
        #
        # @param last_name [String]
        #
        # @param primary_team_id [String] The user's primary team
        #
        # @param role_id [String] The user's role
        #
        # @param secondary_team_ids [Array<String>] The user's additional teams
        #
        # @param send_welcome_email [Boolean] Whether to send a welcome email
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::PublicUser]
        #
        # @see HubspotSDK::Models::Settings::UserCreateParams
        def create(params)
          parsed, options = HubspotSDK::Settings::UserCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "settings/v3/users/",
            body: parsed,
            model: HubspotSDK::Settings::PublicUser,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Settings::UserUpdateParams} for more details.
        #
        # Modifies a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        #
        # @overload update(user_id, id_property: nil, first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, secondary_team_ids: nil, request_options: {})
        #
        # @param user_id [String] Path param: Identifier of user to retrieve
        #
        # @param id_property [Symbol, HubspotSDK::Models::Settings::PublicUserUpdate::IDProperty] Query param: The name of a property with unique user values. Valid values are `U
        #
        # @param first_name [String] Body param:
        #
        # @param last_name [String] Body param:
        #
        # @param primary_team_id [String] Body param: The user's primary team
        #
        # @param role_id [String] Body param: The user's role
        #
        # @param secondary_team_ids [Array<String>] Body param: The user's additional teams
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::PublicUser]
        #
        # @see HubspotSDK::Models::Settings::UserUpdateParams
        def update(user_id, params = {})
          parsed, options = HubspotSDK::Settings::UserUpdateParams.dump_request(params)
          query_params = [:id_property]
          @client.request(
            method: :put,
            path: ["settings/v3/users/%1$s", user_id],
            query: parsed.slice(*query_params).transform_keys(id_property: "idProperty"),
            body: parsed.except(*query_params),
            model: HubspotSDK::Settings::PublicUser,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Settings::UserListParams} for more details.
        #
        # Retrieves a list of users from an account
        #
        # @overload list(after: nil, limit: nil, request_options: {})
        #
        # @param after [String] Results will display maximum 100 users per page. Additional results will be on t
        #
        # @param limit [Integer] The number of users to retrieve
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Settings::PublicUser>]
        #
        # @see HubspotSDK::Models::Settings::UserListParams
        def list(params = {})
          parsed, options = HubspotSDK::Settings::UserListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "settings/v3/users/",
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Settings::PublicUser,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Settings::UserDeleteParams} for more details.
        #
        # Removes a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        #
        # @overload delete(user_id, id_property: nil, request_options: {})
        #
        # @param user_id [String] Identifier of user to delete
        #
        # @param id_property [Symbol, HubspotSDK::Models::Settings::UserDeleteParams::IDProperty] The name of a property with unique user values. Valid values are `USER_ID`(defau
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Settings::UserDeleteParams
        def delete(user_id, params = {})
          parsed, options = HubspotSDK::Settings::UserDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["settings/v3/users/%1$s", user_id],
            query: parsed.transform_keys(id_property: "idProperty"),
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Settings::UserGetParams} for more details.
        #
        # Retrieves a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        #
        # @overload get(user_id, id_property: nil, request_options: {})
        #
        # @param user_id [String] Identifier of user to retrieve
        #
        # @param id_property [Symbol, HubspotSDK::Models::Settings::UserGetParams::IDProperty] The name of a property with unique user values. Valid values are `USER_ID`(defau
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::PublicUser]
        #
        # @see HubspotSDK::Models::Settings::UserGetParams
        def get(user_id, params = {})
          parsed, options = HubspotSDK::Settings::UserGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["settings/v3/users/%1$s", user_id],
            query: parsed.transform_keys(id_property: "idProperty"),
            model: HubspotSDK::Settings::PublicUser,
            options: options
          )
        end

        # Retrieves the roles on an account
        #
        # @overload list_roles(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::CollectionResponsePublicPermissionSetNoPaging]
        #
        # @see HubspotSDK::Models::Settings::UserListRolesParams
        def list_roles(params = {})
          @client.request(
            method: :get,
            path: "settings/v3/users/roles",
            model: HubspotSDK::Settings::CollectionResponsePublicPermissionSetNoPaging,
            options: params[:request_options]
          )
        end

        # View teams for this account
        #
        # @overload list_teams(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::CollectionResponsePublicTeamNoPaging]
        #
        # @see HubspotSDK::Models::Settings::UserListTeamsParams
        def list_teams(params = {})
          @client.request(
            method: :get,
            path: "settings/v3/users/teams",
            model: HubspotSDK::Settings::CollectionResponsePublicTeamNoPaging,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
