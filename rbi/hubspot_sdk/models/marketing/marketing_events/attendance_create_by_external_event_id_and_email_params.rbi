# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        class AttendanceCreateByExternalEventIDAndEmailParams < HubSpotSDK::Models::Marketing::BatchInputMarketingEventEmailSubscriber
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::MarketingEvents::AttendanceCreateByExternalEventIDAndEmailParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :external_event_id

          sig { returns(String) }
          attr_accessor :subscriber_state

          sig { returns(T.nilable(String)) }
          attr_reader :external_account_id

          sig { params(external_account_id: String).void }
          attr_writer :external_account_id

          sig do
            params(
              external_event_id: String,
              subscriber_state: String,
              external_account_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            external_event_id:,
            subscriber_state:,
            external_account_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                external_event_id: String,
                subscriber_state: String,
                external_account_id: String,
                request_options: HubSpotSDK::RequestOptions
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
