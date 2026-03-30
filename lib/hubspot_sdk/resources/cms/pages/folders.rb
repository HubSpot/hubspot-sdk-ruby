# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Pages
        class Folders
          # Create a new folder for landing pages.
          #
          # @overload create_folder(id:, category:, created:, deleted_at:, name:, parent_folder_id:, updated:, request_options: {})
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::ContentFolder]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderCreateFolderParams
          def create_folder(params)
            parsed, options = HubspotSDK::Cms::Pages::FolderCreateFolderParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/folders",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubspotSDK::Cms::ContentFolder,
              options: options
            )
          end

          # Delete a landing page folder, specified by its ID.
          #
          # @overload delete_folder(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderDeleteFolderParams
          def delete_folder(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Pages::FolderDeleteFolderParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :delete,
              path: ["cms/pages/2026-03/landing-pages/folders/%1$s", object_id_],
              query: query,
              model: NilClass,
              options: options
            )
          end

          # Retrieve a landing page folder, specified by its ID.
          #
          # @overload get_folder(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param property [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::ContentFolder]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderGetFolderParams
          def get_folder(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Pages::FolderGetFolderParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/pages/2026-03/landing-pages/folders/%1$s", object_id_],
              query: query,
              model: HubspotSDK::Cms::ContentFolder,
              options: options
            )
          end

          # Retrieve a previous version of a folder, specified by the folder ID and revision
          # ID.
          #
          # @overload get_folder_revision(revision_id, object_id_:, request_options: {})
          #
          # @param revision_id [String]
          # @param object_id_ [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::ContentFolderVersion]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderGetFolderRevisionParams
          def get_folder_revision(revision_id, params)
            parsed, options = HubspotSDK::Cms::Pages::FolderGetFolderRevisionParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/pages/2026-03/landing-pages/folders/%1$s/revisions/%2$s", object_id_, revision_id],
              model: HubspotSDK::Cms::ContentFolderVersion,
              options: options
            )
          end

          # Retrieve a batch of landing page folders as identified in the request body.
          #
          # @overload get_folders_batch(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseContentFolder]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderGetFoldersBatchParams
          def get_folders_batch(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Pages::FolderGetFoldersBatchParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/folders/batch/read",
              query: query,
              headers: {"content-type" => "*/*"},
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::BatchResponseContentFolder,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::FolderListFolderRevisionsParams} for more
          # details.
          #
          # Retrieves all the previous versions of a landing page folder.
          #
          # @overload list_folder_revisions(object_id_, after: nil, before: nil, limit: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param before [String]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::ContentFolderVersion>]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderListFolderRevisionsParams
          def list_folder_revisions(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Pages::FolderListFolderRevisionsParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/pages/2026-03/landing-pages/folders/%1$s/revisions", object_id_],
              query: query,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::ContentFolderVersion,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::FolderListFoldersParams} for more details.
          #
          # Get the list of Landing Page Folders. Supports paging and filtering. This method
          # would be useful for an integration that examined these models and used an
          # external service to suggest edits.
          #
          # @overload list_folders(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time]
          #
          # @param created_at [Time]
          #
          # @param created_before [Time]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param property [String]
          #
          # @param sort [Array<String>]
          #
          # @param updated_after [Time]
          #
          # @param updated_at [Time]
          #
          # @param updated_before [Time]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::ContentFolder>]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderListFoldersParams
          def list_folders(params = {})
            parsed, options = HubspotSDK::Cms::Pages::FolderListFoldersParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::ContentFolder,
              options: options
            )
          end

          # Takes a specified version of a landing page folder and restores it.
          #
          # @overload restore_folder_revision(revision_id, object_id_:, request_options: {})
          #
          # @param revision_id [String]
          # @param object_id_ [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::ContentFolder]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderRestoreFolderRevisionParams
          def restore_folder_revision(revision_id, params)
            parsed, options = HubspotSDK::Cms::Pages::FolderRestoreFolderRevisionParams.dump_request(params)
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
              model: HubspotSDK::Cms::ContentFolder,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::FolderUpdateFolderParams} for more details.
          #
          # Partially update a landing page folder, specified by the folder ID. You only
          # need to specify the details values that you are modifying.
          #
          # @overload update_folder(object_id_, id:, category:, created:, deleted_at:, name:, parent_folder_id:, updated:, archived: nil, request_options: {})
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::ContentFolder]
          #
          # @see HubspotSDK::Models::Cms::Pages::FolderUpdateFolderParams
          def update_folder(object_id_, params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Pages::FolderUpdateFolderParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["cms/pages/2026-03/landing-pages/folders/%1$s", object_id_],
              query: query,
              headers: {"content-type" => "*/*"},
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::ContentFolder,
              options: options
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
end
