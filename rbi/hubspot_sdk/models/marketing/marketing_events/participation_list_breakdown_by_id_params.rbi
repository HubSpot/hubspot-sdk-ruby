# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        class ParticipationListBreakdownByIDParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::MarketingEvents::ParticipationListBreakdownByIDParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :marketing_event_id

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
              marketing_event_id: Integer,
              after: String,
              contact_identifier: String,
              limit: Integer,
              state: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            marketing_event_id:,
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
                marketing_event_id: Integer,
                after: String,
                contact_identifier: String,
                limit: Integer,
                state: String,
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
