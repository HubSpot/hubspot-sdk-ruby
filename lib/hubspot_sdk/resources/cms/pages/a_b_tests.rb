# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Pages
        class ABTests
          # Create a new A/B test variation based on the information provided in the request
          # body.
          #
          # @overload create_ab_test_variation(content_id:, variation_name:, request_options: {})
          #
          # @param content_id [String] ID of the object to test.
          #
          # @param variation_name [String] Name of A/B test variation.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Page]
          #
          # @see HubspotSDK::Models::Cms::Pages::ABTestCreateAbTestVariationParams
          def create_ab_test_variation(params)
            parsed, options = HubspotSDK::Cms::Pages::ABTestCreateAbTestVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/ab-test/create-variation",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubspotSDK::Cms::Page,
              options: options
            )
          end

          # End an active A/B test and designate a winner.
          #
          # @overload end_ab_test(ab_test_id:, winner_id:, request_options: {})
          #
          # @param ab_test_id [String] ID of the test to end.
          #
          # @param winner_id [String] ID of the object to designate as the test winner.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::ABTestEndAbTestParams
          def end_ab_test(params)
            parsed, options = HubspotSDK::Cms::Pages::ABTestEndAbTestParams.dump_request(params)
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
          # @overload rerun_ab_test(ab_test_id:, variation_id:, request_options: {})
          #
          # @param ab_test_id [String] ID of the test to rerun.
          #
          # @param variation_id [String] ID of the object to reactivate as a test variation.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::ABTestRerunAbTestParams
          def rerun_ab_test(params)
            parsed, options = HubspotSDK::Cms::Pages::ABTestRerunAbTestParams.dump_request(params)
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
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
