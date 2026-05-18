# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class LandingPages
          class Folders
            # Create a new folder for landing pages.
            #
            # @overload create(id:, category:, created:, deleted_at:, name:, parent_folder_id:, updated:, request_options: {})
            #
            # @param id [String] The unique ID of the content folder.
            #
            # @param category [Integer] The type of object this folder applies to. Should always be LANDING_PAGE.
            #
            # @param created [Time] The timestamp indicating when the content folder was created.
            #
            # @param deleted_at [Time] The timestamp (ISO8601 format) when this content folder was deleted.
            #
            # @param name [String] The name of the folder which will show up in the app dashboard
            #
            # @param parent_folder_id [Integer] The ID of the content folder this folder is nested under
            #
            # @param updated [Time] The timestamp indicating when the content folder was last updated.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::ContentFolder]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderCreateParams
            def create(params)
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/folders",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: HubSpotSDK::Cms::ContentFolder,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Cms::Pages::LandingPages::FolderUpdateParams} for more
            # details.
            #
            # Partially update a landing page folder, specified by the folder ID. You only
            # need to specify the details values that you are modifying.
            #
            # @overload update(object_id_, id:, category:, created:, deleted_at:, name:, parent_folder_id:, updated:, archived: nil, request_options: {})
            #
            # @param object_id_ [String] Path param
            #
            # @param id [String] Body param: The unique ID of the content folder.
            #
            # @param category [Integer] Body param: The type of object this folder applies to. Should always be
            # LANDING\_
            #
            # @param created [Time] Body param: The timestamp indicating when the content folder was created.
            #
            # @param deleted_at [Time] Body param: The timestamp (ISO8601 format) when this content folder was deleted.
            #
            # @param name [String] Body param: The name of the folder which will show up in the app dashboard
            #
            # @param parent_folder_id [Integer] Body param: The ID of the content folder this folder is nested under
            #
            # @param updated [Time] Body param: The timestamp indicating when the content folder was last updated.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::ContentFolder]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderUpdateParams
            def update(object_id_, params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderUpdateParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :patch,
                path: ["cms/pages/2026-03/landing-pages/folders/%1$s", object_id_],
                query: query,
                headers: {"content-type" => "*/*"},
                body: parsed.except(*query_params),
                model: HubSpotSDK::Cms::ContentFolder,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Cms::Pages::LandingPages::FolderListParams} for more
            # details.
            #
            # Get the list of Landing Page Folders. Supports paging and filtering. This method
            # would be useful for an integration that examined these models and used an
            # external service to suggest edits.
            #
            # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
            #
            # @param after [String] The paging cursor token of the last successfully read resource will be returned
            #
            # @param archived [Boolean] Whether to return only results that have been archived.
            #
            # @param created_after [Time] Filter folders created after the specified date and time.
            #
            # @param created_at [Time] Filter folders by their exact creation date and time.
            #
            # @param created_before [Time]
            #
            # @param limit [Integer] The maximum number of results to display per page.
            #
            # @param property [String] Specify a property to include in the response.
            #
            # @param sort [Array<String>]
            #
            # @param updated_after [Time]
            #
            # @param updated_at [Time]
            #
            # @param updated_before [Time]
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::ContentFolder>]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderListParams
            def list(params = {})
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderListParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: "cms/pages/2026-03/landing-pages/folders",
                query: query.transform_keys(
                  created_after: "createdAfter",
                  created_at: "createdAt",
                  created_before: "createdBefore",
                  updated_after: "updatedAfter",
                  updated_at: "updatedAt",
                  updated_before: "updatedBefore"
                ),
                page: HubSpotSDK::Internal::Page,
                model: HubSpotSDK::Cms::ContentFolder,
                options: options
              )
            end

            # Delete a landing page folder, specified by its ID.
            #
            # @overload delete(object_id_, archived: nil, request_options: {})
            #
            # @param object_id_ [String]
            #
            # @param archived [Boolean] Whether to return only results that have been archived.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderDeleteParams
            def delete(object_id_, params = {})
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderDeleteParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :delete,
                path: ["cms/pages/2026-03/landing-pages/folders/%1$s", object_id_],
                query: query,
                model: NilClass,
                options: options
              )
            end

            # Retrieve a batch of landing page folders as identified in the request body.
            #
            # @overload batch_get(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<String>] Body param: Strings to input.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::BatchResponseContentFolder]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderBatchGetParams
            def batch_get(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderBatchGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/folders/batch/read",
                query: query,
                headers: {"content-type" => "*/*"},
                body: parsed.except(*query_params),
                model: HubSpotSDK::Cms::BatchResponseContentFolder,
                options: options
              )
            end

            # Create a batch of folders as detailed in the request body.
            #
            # @overload create_folders(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Cms::ContentFolder>] Content folders to input.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::BatchResponseContentFolder]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderCreateFoldersParams
            def create_folders(params)
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderCreateFoldersParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/folders/batch/create",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: HubSpotSDK::Cms::BatchResponseContentFolder,
                options: options
              )
            end

            # Delete a batch of folders as specified in the request body.
            #
            # @overload delete_folders(inputs:, request_options: {})
            #
            # @param inputs [Array<String>] Strings to input.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderDeleteFoldersParams
            def delete_folders(params)
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderDeleteFoldersParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/folders/batch/archive",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Retrieve a landing page folder, specified by its ID.
            #
            # @overload get(object_id_, archived: nil, property: nil, request_options: {})
            #
            # @param object_id_ [String]
            #
            # @param archived [Boolean] Whether to return only results that have been archived.
            #
            # @param property [String]
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::ContentFolder]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderGetParams
            def get(object_id_, params = {})
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: ["cms/pages/2026-03/landing-pages/folders/%1$s", object_id_],
                query: query,
                model: HubSpotSDK::Cms::ContentFolder,
                options: options
              )
            end

            # Retrieve a previous version of a folder, specified by the folder ID and revision
            # ID.
            #
            # @overload get_revision(revision_id, object_id_:, request_options: {})
            #
            # @param revision_id [String]
            # @param object_id_ [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::ContentFolderVersion]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderGetRevisionParams
            def get_revision(revision_id, params)
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderGetRevisionParams.dump_request(params)
              object_id_ =
                parsed.delete(:object_id_) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: [
                  "cms/pages/2026-03/landing-pages/folders/%1$s/revisions/%2$s",
                  object_id_,
                  revision_id
                ],
                model: HubSpotSDK::Cms::ContentFolderVersion,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Cms::Pages::LandingPages::FolderListRevisionsParams} for
            # more details.
            #
            # Retrieves all the previous versions of a landing page folder.
            #
            # @overload list_revisions(object_id_, after: nil, before: nil, limit: nil, request_options: {})
            #
            # @param object_id_ [String]
            #
            # @param after [String] The paging cursor token of the last successfully read resource will be returned
            #
            # @param before [String]
            #
            # @param limit [Integer] The maximum number of results to display per page.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::ContentFolderVersion>]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderListRevisionsParams
            def list_revisions(object_id_, params = {})
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderListRevisionsParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: ["cms/pages/2026-03/landing-pages/folders/%1$s/revisions", object_id_],
                query: query,
                page: HubSpotSDK::Internal::Page,
                model: HubSpotSDK::Cms::ContentFolderVersion,
                options: options
              )
            end

            # Takes a specified version of a landing page folder and restores it.
            #
            # @overload restore_revision(revision_id, object_id_:, request_options: {})
            #
            # @param revision_id [String]
            # @param object_id_ [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::ContentFolder]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderRestoreRevisionParams
            def restore_revision(revision_id, params)
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderRestoreRevisionParams.dump_request(params)
              object_id_ =
                parsed.delete(:object_id_) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: [
                  "cms/pages/2026-03/landing-pages/folders/%1$s/revisions/%2$s/restore",
                  object_id_,
                  revision_id
                ],
                model: HubSpotSDK::Cms::ContentFolder,
                options: options
              )
            end

            # Update a batch of landing page folders as specified in the request body.
            #
            # @overload update_folders(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<Object>] Body param: JSON nodes to input.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::BatchResponseContentFolder]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::FolderUpdateFoldersParams
            def update_folders(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::FolderUpdateFoldersParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/folders/batch/update",
                query: query,
                headers: {"content-type" => "*/*"},
                body: parsed.except(*query_params),
                model: HubSpotSDK::Cms::BatchResponseContentFolder,
                options: options
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
  end
end
