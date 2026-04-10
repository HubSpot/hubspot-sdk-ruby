# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Automation
      class Actions
        class Revisions
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Automation::Actions::RevisionListParams} for more details.
          #
          # Retrieve the versions of a definition by ID.
          #
          # @overload list(definition_id, app_id:, after: nil, limit: nil, request_options: {})
          #
          # @param definition_id [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param after [String] Query param: The paging cursor token of the last successfully read resource will
          #
          # @param limit [Integer] Query param: The maximum number of results to display per page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Automation::PublicActionRevision>]
          #
          # @see HubSpotSDK::Models::Automation::Actions::RevisionListParams
          def list(definition_id, params)
            parsed, options = HubSpotSDK::Automation::Actions::RevisionListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["automation/actions/2026-03/%1$s/%2$s/revisions", app_id, definition_id],
              query: query,
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Automation::PublicActionRevision,
              options: options
            )
          end

          # Retrieve a specific revision of a definition by revision ID.
          #
          # @overload get(revision_id, app_id:, definition_id:, request_options: {})
          #
          # @param revision_id [String]
          # @param app_id [Integer]
          # @param definition_id [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Automation::PublicActionRevision]
          #
          # @see HubSpotSDK::Models::Automation::Actions::RevisionGetParams
          def get(revision_id, params)
            parsed, options = HubSpotSDK::Automation::Actions::RevisionGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            definition_id =
              parsed.delete(:definition_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "automation/actions/2026-03/%1$s/%2$s/revisions/%3$s",
                app_id,
                definition_id,
                revision_id
              ],
              model: HubSpotSDK::Automation::PublicActionRevision,
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
