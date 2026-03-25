# typed: strong

module HubspotSDK
  module Models
    MarketingEventIdentifiersResponse =
      Marketing::MarketingEventIdentifiersResponse

    module Marketing
      class MarketingEventIdentifiersResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventIdentifiersResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID that is associated with this marketing event in the external event
        # application
        sig { returns(String) }
        attr_accessor :external_event_id

        # The name of the marketing event
        sig { returns(String) }
        attr_accessor :marketing_event_name

        # The internal ID of the marketing event in HubSpot CRM
        sig { returns(String) }
        attr_accessor :object_id_

        sig { returns(T.nilable(HubspotSDK::Marketing::AppInfo)) }
        attr_reader :app_info

        sig { params(app_info: HubspotSDK::Marketing::AppInfo::OrHash).void }
        attr_writer :app_info

        # The accountId that is associated with this marketing event in the external event
        # application
        sig { returns(T.nilable(String)) }
        attr_reader :external_account_id

        sig { params(external_account_id: String).void }
        attr_writer :external_account_id

        sig do
          params(
            external_event_id: String,
            marketing_event_name: String,
            object_id_: String,
            app_info: HubspotSDK::Marketing::AppInfo::OrHash,
            external_account_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID that is associated with this marketing event in the external event
          # application
          external_event_id:,
          # The name of the marketing event
          marketing_event_name:,
          # The internal ID of the marketing event in HubSpot CRM
          object_id_:,
          app_info: nil,
          # The accountId that is associated with this marketing event in the external event
          # application
          external_account_id: nil
        )
        end

        sig do
          override.returns(
            {
              external_event_id: String,
              marketing_event_name: String,
              object_id_: String,
              app_info: HubspotSDK::Marketing::AppInfo,
              external_account_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
