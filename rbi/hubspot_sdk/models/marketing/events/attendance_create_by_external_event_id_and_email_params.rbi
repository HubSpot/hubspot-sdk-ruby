# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Events
        class AttendanceCreateByExternalEventIDAndEmailParams < HubspotSDK::Models::Marketing::BatchInputMarketingEventEmailSubscriber
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Events::AttendanceCreateByExternalEventIDAndEmailParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :external_event_id

          # The accountId that is associated with this marketing event in the external event
          # application
          sig { returns(T.nilable(String)) }
          attr_reader :external_account_id

          sig { params(external_account_id: String).void }
          attr_writer :external_account_id

          sig do
            params(
              external_event_id: String,
              external_account_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            external_event_id:,
            # The accountId that is associated with this marketing event in the external event
            # application
            external_account_id: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                external_event_id: String,
                external_account_id: String,
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
