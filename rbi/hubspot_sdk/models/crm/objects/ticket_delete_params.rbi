# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class TicketDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::TicketDeleteParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :ticket_id

          sig do
            params(
              ticket_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(ticket_id:, request_options: {})
          end

          sig do
            override.returns(
              { ticket_id: String, request_options: HubspotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
