# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class SearchPublicResponseWrapper < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::SearchPublicResponseWrapper,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the source application of the marketing event
        sig { returns(Integer) }
        attr_accessor :app_id

        # The account ID associated with this marketing event in the external application
        sig { returns(String) }
        attr_accessor :external_account_id

        # The ID of the marketing event in the external event application
        sig { returns(String) }
        attr_accessor :external_event_id

        # The internal ID of the marketing event in HubSpot
        sig { returns(String) }
        attr_accessor :object_id_

        sig do
          params(
            app_id: Integer,
            external_account_id: String,
            external_event_id: String,
            object_id_: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the source application of the marketing event
          app_id:,
          # The account ID associated with this marketing event in the external application
          external_account_id:,
          # The ID of the marketing event in the external event application
          external_event_id:,
          # The internal ID of the marketing event in HubSpot
          object_id_:
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              external_account_id: String,
              external_event_id: String,
              object_id_: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
