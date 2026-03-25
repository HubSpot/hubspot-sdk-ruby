# typed: strong

module HubspotSDK
  module Resources
    class Meta
      class Origins
        sig { returns(HubspotSDK::Resources::Meta::Origins::IPRanges) }
        attr_reader :ip_ranges

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
