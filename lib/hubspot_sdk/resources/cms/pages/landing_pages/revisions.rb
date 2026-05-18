# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class LandingPages
          class Revisions
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
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::RevisionGetLandingPageRevisionParams
            def get_landing_page_revision(revision_id, params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::RevisionGetLandingPageRevisionParams.dump_request(params)
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
            # {HubSpotSDK::Models::Cms::Pages::LandingPages::RevisionListLandingPageRevisionsParams}
            # for more details.
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
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::RevisionListLandingPageRevisionsParams
            def list_landing_page_revisions(object_id_, params = {})
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::RevisionListLandingPageRevisionsParams.dump_request(params)
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

            # Restores a previous version of a landing page, specified by page ID and revision
            # ID.
            #
            # @overload restore_landing_page_revision(revision_id, object_id_:, request_options: {})
            #
            # @param revision_id [String]
            # @param object_id_ [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::PagesPage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::RevisionRestoreLandingPageRevisionParams
            def restore_landing_page_revision(revision_id, params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::RevisionRestoreLandingPageRevisionParams.dump_request(params)
              object_id_ =
                parsed.delete(:object_id_) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: [
                  "cms/pages/2026-03/landing-pages/%1$s/revisions/%2$s/restore",
                  object_id_,
                  revision_id
                ],
                model: HubSpotSDK::Cms::PagesPage,
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
            # @return [HubSpotSDK::Models::Cms::PagesPage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::RevisionRestoreLandingPageRevisionToDraftParams
            def restore_landing_page_revision_to_draft(revision_id, params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::RevisionRestoreLandingPageRevisionToDraftParams.dump_request(params)
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
                model: HubSpotSDK::Cms::PagesPage,
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
