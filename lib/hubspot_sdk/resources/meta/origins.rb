# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Meta
      class Origins
        # @return [HubSpotSDK::Resources::Meta::Origins::IPRanges]
        attr_reader :ip_ranges

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @ip_ranges = HubSpotSDK::Resources::Meta::Origins::IPRanges.new(client: client)
        end
      end
    end
  end
end
