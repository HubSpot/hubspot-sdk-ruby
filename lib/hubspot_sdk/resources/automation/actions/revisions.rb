# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Actions
        class Revisions
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Automation::Actions::RevisionListParams} for more details.
          #
          # Retrieve the versions of a definition by ID.
          #
          # @overload list(definition_id, app_id:, after: nil, limit: nil, request_options: {})
          #
          # @param definition_id [String] Path param: The ID of the definition.
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param after [String] Query param: The paging cursor token of the last successfully read resource will
          #
          # @param limit [Integer] Query param: The maximum number of results to display per page.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Automation::PublicActionRevision>]
          #
          # @see HubspotSDK::Models::Automation::Actions::RevisionListParams
          def list(definition_id, params)
            parsed, options = HubspotSDK::Automation::Actions::RevisionListParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["automation/v4/actions/%1$s/%2$s/revisions", app_id, definition_id],
              query: parsed,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Automation::PublicActionRevision,
              options: options
            )
          end

          # Retrieve a specific revision of a definition by revision ID.
          #
          # @overload get(revision_id, app_id:, definition_id:, request_options: {})
          #
          # @param revision_id [String] The ID of the revision.
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param definition_id [String] The ID of the definition.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicActionRevision]
          #
          # @see HubspotSDK::Models::Automation::Actions::RevisionGetParams
          def get(revision_id, params)
            parsed, options = HubspotSDK::Automation::Actions::RevisionGetParams.dump_request(params)
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
              path: ["automation/v4/actions/%1$s/%2$s/revisions/%3$s", app_id, definition_id, revision_id],
              model: HubspotSDK::Automation::PublicActionRevision,
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
