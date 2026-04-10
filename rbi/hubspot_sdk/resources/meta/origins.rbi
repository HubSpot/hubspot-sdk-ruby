# typed: strong

module HubSpotSDK
  module Resources
    class Meta
      class Origins
        sig { returns(HubSpotSDK::Resources::Meta::Origins::IPRanges) }
        attr_reader :ip_ranges

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
