# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Settings
      class Users
        # @overload create(email:, send_welcome_email:, first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, secondary_team_ids: nil, request_options: {})
        #
        # @param email [String] The user's email.
        #
        # @param send_welcome_email [Boolean] Whether to send a welcome email.
        #
        # @param first_name [String] The user's first name.
        #
        # @param last_name [String] The user's last name.
        #
        # @param primary_team_id [String] The user's primary team.
        #
        # @param role_id [String] The user's role.
        #
        # @param secondary_team_ids [Array<String>] The user's additional teams.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Settings::PublicUser]
        #
        # @see HubSpotSDK::Models::Settings::UserCreateParams
        def create(params)
          parsed, options = HubSpotSDK::Settings::UserCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "settings/users/2026-03",
            body: parsed,
            model: HubSpotSDK::Settings::PublicUser,
            options: options
          )
        end

        # Modifies a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        #
        # @overload update(user_id, id_property: nil, first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, secondary_team_ids: nil, request_options: {})
        #
        # @param user_id [String] Path param
        #
        # @param id_property [Symbol, HubSpotSDK::Models::Settings::PublicUserUpdate::IDProperty] Query param
        #
        # @param first_name [String] Body param: The first name of the user.
        #
        # @param last_name [String] Body param: The last name of the user.
        #
        # @param primary_team_id [String] Body param: The user's primary team.
        #
        # @param role_id [String] Body param: The user's role.
        #
        # @param secondary_team_ids [Array<String>] Body param: The user's additional teams.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Settings::PublicUser]
        #
        # @see HubSpotSDK::Models::Settings::UserUpdateParams
        def update(user_id, params = {})
          query_params = [:id_property]
          parsed, options = HubSpotSDK::Settings::UserUpdateParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :put,
            path: ["settings/users/2026-03/%1$s", user_id],
            query: query.transform_keys(id_property: "idProperty"),
            body: parsed.except(*query_params),
            model: HubSpotSDK::Settings::PublicUser,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Settings::UserListParams} for more details.
        #
        # @overload list(after: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Settings::PublicUser>]
        #
        # @see HubSpotSDK::Models::Settings::UserListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Settings::UserListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "settings/users/2026-03",
            query: query,
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Settings::PublicUser,
            options: options
          )
        end

        # Removes a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        #
        # @overload delete(user_id, id_property: nil, request_options: {})
        #
        # @param user_id [String]
        # @param id_property [Symbol, HubSpotSDK::Models::Settings::UserDeleteParams::IDProperty]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Settings::UserDeleteParams
        def delete(user_id, params = {})
          parsed, options = HubSpotSDK::Settings::UserDeleteParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["settings/users/2026-03/%1$s", user_id],
            query: query.transform_keys(id_property: "idProperty"),
            model: NilClass,
            options: options
          )
        end

        # Retrieves a user identified by `userId`. `userId` refers to the user's ID by
        # default, or optionally email as specified by the `IdProperty` query param.
        #
        # @overload get(user_id, id_property: nil, request_options: {})
        #
        # @param user_id [String]
        # @param id_property [Symbol, HubSpotSDK::Models::Settings::UserGetParams::IDProperty]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Settings::PublicUser]
        #
        # @see HubSpotSDK::Models::Settings::UserGetParams
        def get(user_id, params = {})
          parsed, options = HubSpotSDK::Settings::UserGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["settings/users/2026-03/%1$s", user_id],
            query: query.transform_keys(id_property: "idProperty"),
            model: HubSpotSDK::Settings::PublicUser,
            options: options
          )
        end

        # Retrieves the roles on an account
        #
        # @overload list_roles(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Settings::CollectionResponsePublicPermissionSetNoPaging]
        #
        # @see HubSpotSDK::Models::Settings::UserListRolesParams
        def list_roles(params = {})
          @client.request(
            method: :get,
            path: "settings/users/2026-03/roles",
            model: HubSpotSDK::Settings::CollectionResponsePublicPermissionSetNoPaging,
            options: params[:request_options]
          )
        end

        # View teams for this account
        #
        # @overload list_teams(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Settings::CollectionResponsePublicTeamNoPaging]
        #
        # @see HubSpotSDK::Models::Settings::UserListTeamsParams
        def list_teams(params = {})
          @client.request(
            method: :get,
            path: "settings/users/2026-03/teams",
            model: HubSpotSDK::Settings::CollectionResponsePublicTeamNoPaging,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
