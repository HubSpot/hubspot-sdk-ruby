# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module MarketingEvents
        class ParticipationListBreakdownByContactParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::MarketingEvents::ParticipationListBreakdownByContactParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :contact_identifier

          # The cursor indicating the position of the last retrieved item.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

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
              contact_identifier: String,
              after: String,
              limit: Integer,
              state: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            contact_identifier:,
            # The cursor indicating the position of the last retrieved item.
            after: nil,
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
                contact_identifier: String,
                after: String,
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
