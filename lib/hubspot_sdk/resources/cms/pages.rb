# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Pages
        # @return [HubspotSDK::Resources::Cms::Pages::ABTests]
        attr_reader :a_b_tests

        # @return [HubspotSDK::Resources::Cms::Pages::Batch]
        attr_reader :batch

        # @return [HubspotSDK::Resources::Cms::Pages::Folders]
        attr_reader :folders

        # @return [HubspotSDK::Resources::Cms::Pages::LandingPages]
        attr_reader :landing_pages

        # @return [HubspotSDK::Resources::Cms::Pages::MultiLanguage]
        attr_reader :multi_language

        # @return [HubspotSDK::Resources::Cms::Pages::WebsitePages]
        attr_reader :website_pages

        # Retrieve a previous version of a website page by the revision ID.
        #
        # @overload get_revision(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [String]
        # @param object_id_ [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::PageVersion]
        #
        # @see HubspotSDK::Models::Cms::PageGetRevisionParams
        def get_revision(revision_id, params)
          parsed, options = HubspotSDK::Cms::PageGetRevisionParams.dump_request(params)
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["cms/pages/2026-03/site-pages/%1$s/revisions/%2$s", object_id_, revision_id],
            model: HubspotSDK::Cms::PageVersion,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::PageListLandingPageFoldersParams} for more details.
        #
        # @overload list_landing_page_folders(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @return [Object]
        #
        # @see HubspotSDK::Models::Cms::PageListLandingPageFoldersParams
        def list_landing_page_folders(params = {})
          parsed, options = HubspotSDK::Cms::PageListLandingPageFoldersParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/pages/2026-03/landing-pages/folders/cursor",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            model: HubspotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::PageListLandingPagesParams} for more details.
        #
        # @overload list_landing_pages(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @return [Object]
        #
        # @see HubspotSDK::Models::Cms::PageListLandingPagesParams
        def list_landing_pages(params = {})
          parsed, options = HubspotSDK::Cms::PageListLandingPagesParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/pages/2026-03/landing-pages/cursor",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            model: HubspotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::PageListRevisionsParams} for more details.
        #
        # Retrieves all the previous versions of a website page, specified by page ID.
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::PageVersion>]
        #
        # @see HubspotSDK::Models::Cms::PageListRevisionsParams
        def list_revisions(object_id_, params = {})
          parsed, options = HubspotSDK::Cms::PageListRevisionsParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["cms/pages/2026-03/site-pages/%1$s/revisions", object_id_],
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Cms::PageVersion,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::PageListSitePagesParams} for more details.
        #
        # @overload list_site_pages(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @return [Object]
        #
        # @see HubspotSDK::Models::Cms::PageListSitePagesParams
        def list_site_pages(params = {})
          parsed, options = HubspotSDK::Cms::PageListSitePagesParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/pages/2026-03/site-pages/cursor",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            model: HubspotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::PageQueryLandingPageFoldersParams} for more details.
        #
        # @overload query_landing_page_folders(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @return [Object]
        #
        # @see HubspotSDK::Models::Cms::PageQueryLandingPageFoldersParams
        def query_landing_page_folders(params = {})
          parsed, options = HubspotSDK::Cms::PageQueryLandingPageFoldersParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/pages/2026-03/landing-pages/folders/cursor/query",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            model: HubspotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::PageQueryLandingPagesParams} for more details.
        #
        # @overload query_landing_pages(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @return [Object]
        #
        # @see HubspotSDK::Models::Cms::PageQueryLandingPagesParams
        def query_landing_pages(params = {})
          parsed, options = HubspotSDK::Cms::PageQueryLandingPagesParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/pages/2026-03/landing-pages/cursor/query",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            model: HubspotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::PageQuerySitePagesParams} for more details.
        #
        # @overload query_site_pages(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @return [Object]
        #
        # @see HubspotSDK::Models::Cms::PageQuerySitePagesParams
        def query_site_pages(params = {})
          parsed, options = HubspotSDK::Cms::PageQuerySitePagesParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/pages/2026-03/site-pages/cursor/query",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            model: HubspotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Discards any edits and resets the draft to match the live version.
        #
        # @overload reset_draft(object_id_, request_options: {})
        #
        # @param object_id_ [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::PageResetDraftParams
        def reset_draft(object_id_, params = {})
          @client.request(
            method: :post,
            path: ["cms/pages/2026-03/site-pages/%1$s/draft/reset", object_id_],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Restores a website page to a previous version, specified by page ID and version
        # ID.
        #
        # @overload restore_revision(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [String]
        # @param object_id_ [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::Page]
        #
        # @see HubspotSDK::Models::Cms::PageRestoreRevisionParams
        def restore_revision(revision_id, params)
          parsed, options = HubspotSDK::Cms::PageRestoreRevisionParams.dump_request(params)
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["cms/pages/2026-03/site-pages/%1$s/revisions/%2$s/restore", object_id_, revision_id],
            model: HubspotSDK::Cms::Page,
            options: options
          )
        end

        # Takes a specified version of a website page and sets it as the new draft version
        # of the page.
        #
        # @overload restore_revision_to_draft(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [Integer]
        # @param object_id_ [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::Page]
        #
        # @see HubspotSDK::Models::Cms::PageRestoreRevisionToDraftParams
        def restore_revision_to_draft(revision_id, params)
          parsed, options = HubspotSDK::Cms::PageRestoreRevisionToDraftParams.dump_request(params)
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: [
              "cms/pages/2026-03/site-pages/%1$s/revisions/%2$s/restore-to-draft",
              object_id_,
              revision_id
            ],
            model: HubspotSDK::Cms::Page,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @a_b_tests = HubspotSDK::Resources::Cms::Pages::ABTests.new(client: client)
          @batch = HubspotSDK::Resources::Cms::Pages::Batch.new(client: client)
          @folders = HubspotSDK::Resources::Cms::Pages::Folders.new(client: client)
          @landing_pages = HubspotSDK::Resources::Cms::Pages::LandingPages.new(client: client)
          @multi_language = HubspotSDK::Resources::Cms::Pages::MultiLanguage.new(client: client)
          @website_pages = HubspotSDK::Resources::Cms::Pages::WebsitePages.new(client: client)
        end
      end
    end
  end
end
