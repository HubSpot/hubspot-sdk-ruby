# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Events
        class ParticipationListBreakdownByContactParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Events::ParticipationListBreakdownByContactParams,
                HubspotSDK::Internal::AnyHash
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
              request_options: HubspotSDK::RequestOptions::OrHash
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
