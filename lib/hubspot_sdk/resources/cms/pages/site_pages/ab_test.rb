# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class SitePages
          class AbTest
            # Create a new A/B test variation based on the information provided in the request
            # body.
            #
            # @overload create_site_page_variation(content_id:, variation_name:, request_options: {})
            #
            # @param content_id [String] ID of the object to test.
            #
            # @param variation_name [String] Name of A/B test variation.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::PagesPage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::SitePages::AbTestCreateSitePageVariationParams
            def create_site_page_variation(params)
              parsed, options =
                HubSpotSDK::Cms::Pages::SitePages::AbTestCreateSitePageVariationParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/site-pages/ab-test/create-variation",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: HubSpotSDK::Cms::PagesPage,
                options: options
              )
            end

            # End an active A/B test and designate a winner.
            #
            # @overload end_site_page_test(ab_test_id:, winner_id:, request_options: {})
            #
            # @param ab_test_id [String] ID of the test to end.
            #
            # @param winner_id [String] ID of the object to designate as the test winner.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Cms::Pages::SitePages::AbTestEndSitePageTestParams
            def end_site_page_test(params)
              parsed, options = HubSpotSDK::Cms::Pages::SitePages::AbTestEndSitePageTestParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/site-pages/ab-test/end",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Rerun a previous A/B test.
            #
            # @overload rerun_site_page_test(ab_test_id:, variation_id:, request_options: {})
            #
            # @param ab_test_id [String] ID of the test to rerun.
            #
            # @param variation_id [String] ID of the object to reactivate as a test variation.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Cms::Pages::SitePages::AbTestRerunSitePageTestParams
            def rerun_site_page_test(params)
              parsed, options = HubSpotSDK::Cms::Pages::SitePages::AbTestRerunSitePageTestParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/site-pages/ab-test/rerun",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: NilClass,
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
