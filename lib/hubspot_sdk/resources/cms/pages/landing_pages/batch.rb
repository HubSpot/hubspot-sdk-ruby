# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class LandingPages
          class Batch
            # Create a batch of landing pages as detailed in the request body.
            #
            # @overload create_landing_pages(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Cms::PagesPage>] Pages to input.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::BatchResponsePage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::BatchCreateLandingPagesParams
            def create_landing_pages(params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::BatchCreateLandingPagesParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/batch/create",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: HubSpotSDK::Cms::BatchResponsePage,
                options: options
              )
            end

            # Delete landing pages specified by ID in the request body. Note: this is not the
            # same as the dashboard `archive` function. To perform a dashboard `archive` send
            # an normal update with the `archivedInDashboard` field set to `true`.
            #
            # @overload delete_landing_pages(inputs:, request_options: {})
            #
            # @param inputs [Array<String>] Strings to input.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::BatchDeleteLandingPagesParams
            def delete_landing_pages(params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::BatchDeleteLandingPagesParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/batch/archive",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Retrieve a batch of landing pages as specified in the request body.
            #
            # @overload get_landing_pages(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<String>] Body param: Strings to input.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::BatchResponsePage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::BatchGetLandingPagesParams
            def get_landing_pages(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Cms::Pages::LandingPages::BatchGetLandingPagesParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/batch/read",
                query: query,
                headers: {"content-type" => "*/*"},
                body: parsed.except(*query_params),
                model: HubSpotSDK::Cms::BatchResponsePage,
                options: options
              )
            end

            # Update a batch of landing pages as specified in the request body.
            #
            # @overload update_landing_pages(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<Object>] Body param: JSON nodes to input.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::BatchResponsePage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::BatchUpdateLandingPagesParams
            def update_landing_pages(params)
              query_params = [:archived]
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::BatchUpdateLandingPagesParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/batch/update",
                query: query,
                headers: {"content-type" => "*/*"},
                body: parsed.except(*query_params),
                model: HubSpotSDK::Cms::BatchResponsePage,
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
