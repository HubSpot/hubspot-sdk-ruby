# typed: strong

module HubspotSDK
  module Resources
    class Settings
      sig { returns(HubspotSDK::Resources::Settings::Currencies) }
      attr_reader :currencies

      sig { returns(HubspotSDK::Resources::Settings::TaxRates) }
      attr_reader :tax_rates

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
