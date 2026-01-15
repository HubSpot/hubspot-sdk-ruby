# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        class V4
          class Links
            sig do
              params(
                channel:
                  HubspotSDK::Marketing::Subscriptions::LinkGenerationRequest::Channel::OrSymbol,
                subscriber_id_string: String,
                business_unit_id: Integer,
                language: String,
                subscription_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::LinkGenerationResponse
              )
            end
            def create(
              # Query param
              channel:,
              # Body param
              subscriber_id_string:,
              # Query param
              business_unit_id: nil,
              # Body param
              language: nil,
              # Body param
              subscription_id: nil,
              request_options: {}
            )
            end

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
