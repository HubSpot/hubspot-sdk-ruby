# typed: strong

module HubspotSDK
  module Resources
    class Settings
      class TaxRates
        # Retrieve a paginated list of all tax rates set up in the account tax rate
        # library
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CollectionResponsePublicTaxRateGroupForwardPaging
          )
        end
        def list(request_options: {})
        end

        # Retrieve a specific tax rate by its `taxRateGroupId`.
        sig do
          params(
            tax_rate_group_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::PublicTaxRateGroup)
        end
        def get(tax_rate_group_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
