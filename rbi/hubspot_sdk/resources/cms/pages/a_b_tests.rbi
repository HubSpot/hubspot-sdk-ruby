# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class ABTests
          # Create a new A/B test variation based on the information provided in the request
          # body.
          sig do
            params(
              content_id: String,
              variation_name: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::PageData)
          end
          def create_landing_page_variation(
            # ID of the object to test.
            content_id:,
            # Name of A/B test variation.
            variation_name:,
            request_options: {}
          )
          end

          # Create a new A/B test variation based on the information provided in the request
          # body.
          sig do
            params(
              content_id: String,
              variation_name: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::PageData)
          end
          def create_site_page_variation(
            # ID of the object to test.
            content_id:,
            # Name of A/B test variation.
            variation_name:,
            request_options: {}
          )
          end

          # End an active A/B test and designate a winner.
          sig do
            params(
              ab_test_id: String,
              winner_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def end_landing_page_test(
            # ID of the test to end.
            ab_test_id:,
            # ID of the object to designate as the test winner.
            winner_id:,
            request_options: {}
          )
          end

          # End an active A/B test and designate a winner.
          sig do
            params(
              ab_test_id: String,
              winner_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def end_site_page_test(
            # ID of the test to end.
            ab_test_id:,
            # ID of the object to designate as the test winner.
            winner_id:,
            request_options: {}
          )
          end

          # Rerun a previous A/B test.
          sig do
            params(
              ab_test_id: String,
              variation_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def rerun_landing_page_test(
            # ID of the test to rerun.
            ab_test_id:,
            # ID of the object to reactivate as a test variation.
            variation_id:,
            request_options: {}
          )
          end

          # Rerun a previous A/B test.
          sig do
            params(
              ab_test_id: String,
              variation_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def rerun_site_page_test(
            # ID of the test to rerun.
            ab_test_id:,
            # ID of the object to reactivate as a test variation.
            variation_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
