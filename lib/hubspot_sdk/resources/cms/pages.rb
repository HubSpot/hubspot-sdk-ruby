# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        # @return [HubSpotSDK::Resources::Cms::Pages::ABTests]
        attr_reader :a_b_tests

        # @return [HubSpotSDK::Resources::Cms::Pages::Batch]
        attr_reader :batch

        # @return [HubSpotSDK::Resources::Cms::Pages::Folders]
        attr_reader :folders

        # @return [HubSpotSDK::Resources::Cms::Pages::LandingPages]
        attr_reader :landing_pages

        # @return [HubSpotSDK::Resources::Cms::Pages::MultiLanguage]
        attr_reader :multi_language

        # @return [HubSpotSDK::Resources::Cms::Pages::WebsitePages]
        attr_reader :website_pages

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::PageGetLandingPageFoldersParams} for more details.
        #
        # @overload get_landing_page_folders(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see HubSpotSDK::Models::Cms::PageGetLandingPageFoldersParams
        def get_landing_page_folders(params = {})
          parsed, options = HubSpotSDK::Cms::PageGetLandingPageFoldersParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            model: HubSpotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::PageGetLandingPageFoldersByQueryParams} for more
        # details.
        #
        # @overload get_landing_page_folders_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see HubSpotSDK::Models::Cms::PageGetLandingPageFoldersByQueryParams
        def get_landing_page_folders_by_query(params = {})
          parsed, options = HubSpotSDK::Cms::PageGetLandingPageFoldersByQueryParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            model: HubSpotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Retrieve a previous version of a landing page, specified by page ID and revision
        # ID.
        #
        # @overload get_landing_page_revision(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [String]
        # @param object_id_ [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::PageVersion]
        #
        # @see HubSpotSDK::Models::Cms::PageGetLandingPageRevisionParams
        def get_landing_page_revision(revision_id, params)
          parsed, options = HubSpotSDK::Cms::PageGetLandingPageRevisionParams.dump_request(params)
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["cms/pages/2026-03/landing-pages/%1$s/revisions/%2$s", object_id_, revision_id],
            model: HubSpotSDK::Cms::PageVersion,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::PageGetLandingPagesParams} for more details.
        #
        # @overload get_landing_pages(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see HubSpotSDK::Models::Cms::PageGetLandingPagesParams
        def get_landing_pages(params = {})
          parsed, options = HubSpotSDK::Cms::PageGetLandingPagesParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            model: HubSpotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::PageGetLandingPagesByQueryParams} for more details.
        #
        # @overload get_landing_pages_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see HubSpotSDK::Models::Cms::PageGetLandingPagesByQueryParams
        def get_landing_pages_by_query(params = {})
          parsed, options = HubSpotSDK::Cms::PageGetLandingPagesByQueryParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            model: HubSpotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Retrieve a previous version of a website page by the revision ID.
        #
        # @overload get_site_page_revision(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [String]
        # @param object_id_ [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::PageVersion]
        #
        # @see HubSpotSDK::Models::Cms::PageGetSitePageRevisionParams
        def get_site_page_revision(revision_id, params)
          parsed, options = HubSpotSDK::Cms::PageGetSitePageRevisionParams.dump_request(params)
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["cms/pages/2026-03/site-pages/%1$s/revisions/%2$s", object_id_, revision_id],
            model: HubSpotSDK::Cms::PageVersion,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::PageGetSitePagesParams} for more details.
        #
        # @overload get_site_pages(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see HubSpotSDK::Models::Cms::PageGetSitePagesParams
        def get_site_pages(params = {})
          parsed, options = HubSpotSDK::Cms::PageGetSitePagesParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            model: HubSpotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::PageGetSitePagesByQueryParams} for more details.
        #
        # @overload get_site_pages_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see HubSpotSDK::Models::Cms::PageGetSitePagesByQueryParams
        def get_site_pages_by_query(params = {})
          parsed, options = HubSpotSDK::Cms::PageGetSitePagesByQueryParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            model: HubSpotSDK::Internal::Type::Unknown,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::PageListLandingPageRevisionsParams} for more details.
        #
        # Retrieve all the previous versions of a landing page, specified by page ID.
        #
        # @overload list_landing_page_revisions(object_id_, after: nil, before: nil, limit: nil, request_options: {})
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
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::PageVersion>]
        #
        # @see HubSpotSDK::Models::Cms::PageListLandingPageRevisionsParams
        def list_landing_page_revisions(object_id_, params = {})
          parsed, options = HubSpotSDK::Cms::PageListLandingPageRevisionsParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["cms/pages/2026-03/landing-pages/%1$s/revisions", object_id_],
            query: query,
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Cms::PageVersion,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::PageListSitePageRevisionsParams} for more details.
        #
        # Retrieves all the previous versions of a website page, specified by page ID.
        #
        # @overload list_site_page_revisions(object_id_, after: nil, before: nil, limit: nil, request_options: {})
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
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::PageVersion>]
        #
        # @see HubSpotSDK::Models::Cms::PageListSitePageRevisionsParams
        def list_site_page_revisions(object_id_, params = {})
          parsed, options = HubSpotSDK::Cms::PageListSitePageRevisionsParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["cms/pages/2026-03/site-pages/%1$s/revisions", object_id_],
            query: query,
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Cms::PageVersion,
            options: options
          )
        end

        # Discards any edits and resets the draft to match the live version.
        #
        # @overload reset_site_page_draft(object_id_, request_options: {})
        #
        # @param object_id_ [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Cms::PageResetSitePageDraftParams
        def reset_site_page_draft(object_id_, params = {})
          @client.request(
            method: :post,
            path: ["cms/pages/2026-03/site-pages/%1$s/draft/reset", object_id_],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Restores a previous version of a landing page, specified by page ID and revision
        # ID.
        #
        # @overload restore_landing_page_revision(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [String]
        # @param object_id_ [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::PageData]
        #
        # @see HubSpotSDK::Models::Cms::PageRestoreLandingPageRevisionParams
        def restore_landing_page_revision(revision_id, params)
          parsed, options = HubSpotSDK::Cms::PageRestoreLandingPageRevisionParams.dump_request(params)
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["cms/pages/2026-03/landing-pages/%1$s/revisions/%2$s/restore", object_id_, revision_id],
            model: HubSpotSDK::Cms::PageData,
            options: options
          )
        end

        # Specify a previous version of a landing page to set as the page draft.
        #
        # @overload restore_landing_page_revision_to_draft(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [Integer]
        # @param object_id_ [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::PageData]
        #
        # @see HubSpotSDK::Models::Cms::PageRestoreLandingPageRevisionToDraftParams
        def restore_landing_page_revision_to_draft(revision_id, params)
          parsed, options = HubSpotSDK::Cms::PageRestoreLandingPageRevisionToDraftParams.dump_request(params)
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: [
              "cms/pages/2026-03/landing-pages/%1$s/revisions/%2$s/restore-to-draft",
              object_id_,
              revision_id
            ],
            model: HubSpotSDK::Cms::PageData,
            options: options
          )
        end

        # Restores a website page to a previous version, specified by page ID and version
        # ID.
        #
        # @overload restore_site_page_revision(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [String]
        # @param object_id_ [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::PageData]
        #
        # @see HubSpotSDK::Models::Cms::PageRestoreSitePageRevisionParams
        def restore_site_page_revision(revision_id, params)
          parsed, options = HubSpotSDK::Cms::PageRestoreSitePageRevisionParams.dump_request(params)
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["cms/pages/2026-03/site-pages/%1$s/revisions/%2$s/restore", object_id_, revision_id],
            model: HubSpotSDK::Cms::PageData,
            options: options
          )
        end

        # Takes a specified version of a website page and sets it as the new draft version
        # of the page.
        #
        # @overload restore_site_page_revision_to_draft(revision_id, object_id_:, request_options: {})
        #
        # @param revision_id [Integer]
        # @param object_id_ [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::PageData]
        #
        # @see HubSpotSDK::Models::Cms::PageRestoreSitePageRevisionToDraftParams
        def restore_site_page_revision_to_draft(revision_id, params)
          parsed, options = HubSpotSDK::Cms::PageRestoreSitePageRevisionToDraftParams.dump_request(params)
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
            model: HubSpotSDK::Cms::PageData,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @a_b_tests = HubSpotSDK::Resources::Cms::Pages::ABTests.new(client: client)
          @batch = HubSpotSDK::Resources::Cms::Pages::Batch.new(client: client)
          @folders = HubSpotSDK::Resources::Cms::Pages::Folders.new(client: client)
          @landing_pages = HubSpotSDK::Resources::Cms::Pages::LandingPages.new(client: client)
          @multi_language = HubSpotSDK::Resources::Cms::Pages::MultiLanguage.new(client: client)
          @website_pages = HubSpotSDK::Resources::Cms::Pages::WebsitePages.new(client: client)
        end
      end
    end
  end
end
