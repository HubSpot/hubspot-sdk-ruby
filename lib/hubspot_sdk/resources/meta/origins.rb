# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Meta
      class Origins
        # @return [HubspotSDK::Resources::Meta::Origins::IPRanges]
        attr_reader :ip_ranges

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @ip_ranges = HubspotSDK::Resources::Meta::Origins::IPRanges.new(client: client)
        end
      end
    end
  end
end
