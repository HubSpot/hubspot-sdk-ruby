# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        class V4
          sig do
            returns(
              HubspotSDK::Resources::Marketing::Subscriptions::V4::Definitions
            )
          end
          attr_reader :definitions

          sig do
            returns(HubspotSDK::Resources::Marketing::Subscriptions::V4::Links)
          end
          attr_reader :links

          sig do
            returns(
              HubspotSDK::Resources::Marketing::Subscriptions::V4::Statuses
            )
          end
          attr_reader :statuses

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
