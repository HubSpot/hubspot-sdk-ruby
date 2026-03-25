# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Events
        class ParticipationListBreakdownByExternalAccountAndEventIDParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Events::ParticipationListBreakdownByExternalAccountAndEventIDParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :external_account_id

          sig { returns(String) }
          attr_accessor :external_event_id

          # The cursor indicating the position of the last retrieved item.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # The identifier of the Contact. It may be email or internal id.
          sig { returns(T.nilable(String)) }
          attr_reader :contact_identifier

          sig { params(contact_identifier: String).void }
          attr_writer :contact_identifier

          # The limit for response size. The default value is 10, the max number is 100
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # The participation state value. It may be REGISTERED, CANCELLED, ATTENDED,
          # NO_SHOW
          sig { returns(T.nilable(String)) }
          attr_reader :state

          sig { params(state: String).void }
          attr_writer :state

          sig do
            params(
              external_account_id: String,
              external_event_id: String,
              after: String,
              contact_identifier: String,
              limit: Integer,
              state: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            external_account_id:,
            external_event_id:,
            # The cursor indicating the position of the last retrieved item.
            after: nil,
            # The identifier of the Contact. It may be email or internal id.
            contact_identifier: nil,
            # The limit for response size. The default value is 10, the max number is 100
            limit: nil,
            # The participation state value. It may be REGISTERED, CANCELLED, ATTENDED,
            # NO_SHOW
            state: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                external_account_id: String,
                external_event_id: String,
                after: String,
                contact_identifier: String,
                limit: Integer,
                state: String,
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
