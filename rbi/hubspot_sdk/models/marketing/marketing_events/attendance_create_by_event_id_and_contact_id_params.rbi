# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module MarketingEvents
        class AttendanceCreateByEventIDAndContactIDParams < HubspotSDK::Models::Marketing::BatchInputMarketingEventSubscriber
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::MarketingEvents::AttendanceCreateByEventIDAndContactIDParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_id_

          sig { returns(String) }
          attr_accessor :subscriber_state

          sig do
            params(
              object_id_: String,
              subscriber_state: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(object_id_:, subscriber_state:, request_options: {})
          end

          sig do
            override.returns(
              {
                object_id_: String,
                subscriber_state: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
