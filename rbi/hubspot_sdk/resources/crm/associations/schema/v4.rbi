# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class Schema
          class V4
            # @api private
            sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
