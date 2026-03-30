# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Pages
        class Batch
          # Create a batch of folders as detailed in the request body.
          #
          # @overload create_folders(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Cms::ContentFolder>] Content folders to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseContentFolder]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchCreateFoldersParams
          def create_folders(params)
            parsed, options = HubspotSDK::Cms::Pages::BatchCreateFoldersParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/folders/batch/create",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseContentFolder,
              options: options
            )
          end

          # Create a batch of landing pages as detailed in the request body.
          #
          # @overload create_landing_pages(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Cms::Page>] Pages to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchCreateLandingPagesParams
          def create_landing_pages(params)
            parsed, options = HubspotSDK::Cms::Pages::BatchCreateLandingPagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/batch/create",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubspotSDK::Cms::BatchResponsePage,
              options: options
            )
          end

          # Create a batch of website pages as specified in the request body.
          #
          # @overload create_site_pages(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Cms::Page>] Pages to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchCreateSitePagesParams
          def create_site_pages(params)
            parsed, options = HubspotSDK::Cms::Pages::BatchCreateSitePagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/batch/create",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubspotSDK::Cms::BatchResponsePage,
              options: options
            )
          end

          # Delete a batch of folders as specified in the request body.
          #
          # @overload delete_folders(inputs:, request_options: {})
          #
          # @param inputs [Array<String>] Strings to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchDeleteFoldersParams
          def delete_folders(params)
            parsed, options = HubspotSDK::Cms::Pages::BatchDeleteFoldersParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/folders/batch/archive",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchDeleteLandingPagesParams
          def delete_landing_pages(params)
            parsed, options = HubspotSDK::Cms::Pages::BatchDeleteLandingPagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/batch/archive",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Delete a batch of website pages as specified in the request body. Note: this is
          # not the same as the dashboard `archive` function. To perform a dashboard
          # `archive` send an normal update with the `archivedInDashboard` field set to
          # `true`.
          #
          # @overload delete_site_pages(inputs:, request_options: {})
          #
          # @param inputs [Array<String>] Strings to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchDeleteSitePagesParams
          def delete_site_pages(params)
            parsed, options = HubspotSDK::Cms::Pages::BatchDeleteSitePagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/batch/archive",
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchGetLandingPagesParams
          def get_landing_pages(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Pages::BatchGetLandingPagesParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/batch/read",
              query: query,
              headers: {"content-type" => "*/*"},
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::BatchResponsePage,
              options: options
            )
          end

          # Retrieve a batch of website pages as specified in the request body.
          #
          # @overload get_site_pages(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchGetSitePagesParams
          def get_site_pages(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Pages::BatchGetSitePagesParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/batch/read",
              query: query,
              headers: {"content-type" => "*/*"},
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::BatchResponsePage,
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseContentFolder]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchUpdateFoldersParams
          def update_folders(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Pages::BatchUpdateFoldersParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/folders/batch/update",
              query: query,
              headers: {"content-type" => "*/*"},
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::BatchResponseContentFolder,
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchUpdateLandingPagesParams
          def update_landing_pages(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Pages::BatchUpdateLandingPagesParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/batch/update",
              query: query,
              headers: {"content-type" => "*/*"},
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::BatchResponsePage,
              options: options
            )
          end

          # Update a batch of website pages as specified in the request body.
          #
          # @overload update_site_pages(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<Object>] Body param: JSON nodes to input.
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponsePage]
          #
          # @see HubspotSDK::Models::Cms::Pages::BatchUpdateSitePagesParams
          def update_site_pages(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Pages::BatchUpdateSitePagesParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/batch/update",
              query: query,
              headers: {"content-type" => "*/*"},
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::BatchResponsePage,
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
