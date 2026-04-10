# typed: strong

module HubSpotSDK
  module Resources
    class Settings
      class TaxRates
        # Retrieve a paginated list of all tax rates set up in the account tax rate
        # library
        sig do
          params(
            active: T::Boolean,
            after: String,
            limit: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[HubSpotSDK::Settings::PublicTaxRateGroup]
          )
        end
        def list(
          active: nil,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # Retrieve a specific tax rate by its `taxRateGroupId`.
        sig do
          params(
            tax_rate_group_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Settings::PublicTaxRateGroup)
        end
        def get(tax_rate_group_id, request_options: {})
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
