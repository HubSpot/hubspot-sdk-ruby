# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class ABTests
          # Create a new A/B test variation based on the information provided in the request
          # body.
          #
          # @overload create_landing_page_variation(content_id:, variation_name:, request_options: {})
          #
          # @param content_id [String] ID of the object to test.
          #
          # @param variation_name [String] Name of A/B test variation.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::PagesPage]
          #
          # @see HubSpotSDK::Models::Cms::Pages::ABTestCreateLandingPageVariationParams
          def create_landing_page_variation(params)
            parsed, options = HubSpotSDK::Cms::Pages::ABTestCreateLandingPageVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/ab-test/create-variation",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubSpotSDK::Cms::PagesPage,
              options: options
            )
          end

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
          # @see HubSpotSDK::Models::Cms::Pages::ABTestCreateSitePageVariationParams
          def create_site_page_variation(params)
            parsed, options = HubSpotSDK::Cms::Pages::ABTestCreateSitePageVariationParams.dump_request(params)
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
          # @overload end_landing_page_test(ab_test_id:, winner_id:, request_options: {})
          #
          # @param ab_test_id [String] ID of the test to end.
          #
          # @param winner_id [String] ID of the object to designate as the test winner.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Pages::ABTestEndLandingPageTestParams
          def end_landing_page_test(params)
            parsed, options = HubSpotSDK::Cms::Pages::ABTestEndLandingPageTestParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/ab-test/end",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
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
          # @see HubSpotSDK::Models::Cms::Pages::ABTestEndSitePageTestParams
          def end_site_page_test(params)
            parsed, options = HubSpotSDK::Cms::Pages::ABTestEndSitePageTestParams.dump_request(params)
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
          # @overload rerun_landing_page_test(ab_test_id:, variation_id:, request_options: {})
          #
          # @param ab_test_id [String] ID of the test to rerun.
          #
          # @param variation_id [String] ID of the object to reactivate as a test variation.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Pages::ABTestRerunLandingPageTestParams
          def rerun_landing_page_test(params)
            parsed, options = HubSpotSDK::Cms::Pages::ABTestRerunLandingPageTestParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/landing-pages/ab-test/rerun",
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
          # @see HubSpotSDK::Models::Cms::Pages::ABTestRerunSitePageTestParams
          def rerun_site_page_test(params)
            parsed, options = HubSpotSDK::Cms::Pages::ABTestRerunSitePageTestParams.dump_request(params)
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
