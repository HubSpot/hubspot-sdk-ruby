# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Lists
        class Folders
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Lists::FolderCreateParams} for more details.
          #
          # Creates a folder with the given information.
          #
          # @overload create(name:, parent_folder_id: nil, request_options: {})
          #
          # @param name [String] The name of the folder to be created.
          #
          # @param parent_folder_id [String] The folder this should be created in, if not specified will be created in the ro
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::ListFolderCreateResponse]
          #
          # @see HubspotSDK::Models::Crm::Lists::FolderCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Lists::FolderCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/lists/folders",
              body: parsed,
              model: HubspotSDK::Crm::ListFolderCreateResponse,
              options: options
            )
          end

          # Deletes the folder with the given Id.
          #
          # @overload delete(folder_id, request_options: {})
          #
          # @param folder_id [String] The ID of the folder to delete
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Lists::FolderDeleteParams
          def delete(folder_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/v3/lists/folders/%1$s", folder_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Retrieves a folder and recursively includes all folders via the childNodes
          # attribute. The child lists field will be empty in all child nodes. Only the
          # folder retrieved will include the child lists in that folder.
          #
          # @overload get(folder_id: nil, request_options: {})
          #
          # @param folder_id [String] The Id of the folder to retrieve.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::ListFolderFetchResponse]
          #
          # @see HubspotSDK::Models::Crm::Lists::FolderGetParams
          def get(params = {})
            parsed, options = HubspotSDK::Crm::Lists::FolderGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/lists/folders",
              query: parsed.transform_keys(folder_id: "folderId"),
              model: HubspotSDK::Crm::ListFolderFetchResponse,
              options: options
            )
          end

          # This moves the folder from its current location to a new location. It updates
          # the parent of this folder to the new Id given.
          #
          # @overload move(new_parent_folder_id, folder_id:, request_options: {})
          #
          # @param new_parent_folder_id [String] The ID for the target parent folder.
          #
          # @param folder_id [String] The ID of the folder to move
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::ListFolderFetchResponse]
          #
          # @see HubspotSDK::Models::Crm::Lists::FolderMoveParams
          def move(new_parent_folder_id, params)
            parsed, options = HubspotSDK::Crm::Lists::FolderMoveParams.dump_request(params)
            folder_id =
              parsed.delete(:folder_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["crm/v3/lists/folders/%1$s/move/%2$s", folder_id, new_parent_folder_id],
              model: HubspotSDK::Crm::ListFolderFetchResponse,
              options: options
            )
          end

          # Given a list and a folder, the list will be moved to that folder.
          #
          # @overload move_list(list_id:, new_folder_id:, request_options: {})
          #
          # @param list_id [String] The Id of the list to move.
          #
          # @param new_folder_id [String] The Id of folder to move the list to, the root folder is Id 0.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Lists::FolderMoveListParams
          def move_list(params)
            parsed, options = HubspotSDK::Crm::Lists::FolderMoveListParams.dump_request(params)
            @client.request(
              method: :put,
              path: "crm/v3/lists/folders/move-list",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Renames the given folderId with a new name.
          #
          # @overload rename(folder_id, new_folder_name: nil, request_options: {})
          #
          # @param folder_id [String] The ID of the folder to rename
          #
          # @param new_folder_name [String] The new name of the folder.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::ListFolderFetchResponse]
          #
          # @see HubspotSDK::Models::Crm::Lists::FolderRenameParams
          def rename(folder_id, params = {})
            parsed, options = HubspotSDK::Crm::Lists::FolderRenameParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["crm/v3/lists/folders/%1$s/rename", folder_id],
              query: parsed.transform_keys(new_folder_name: "newFolderName"),
              model: HubspotSDK::Crm::ListFolderFetchResponse,
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
