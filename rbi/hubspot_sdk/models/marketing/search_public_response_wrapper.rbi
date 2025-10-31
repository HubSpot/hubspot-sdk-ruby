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

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(String) }
        attr_accessor :external_account_id

        sig { returns(String) }
        attr_accessor :external_event_id

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
          app_id:,
          external_account_id:,
          external_event_id:,
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
