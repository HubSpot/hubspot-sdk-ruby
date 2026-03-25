# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardMigrateViewsRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CardMigrateViewsRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_card_id

          sig { returns(Integer) }
          attr_accessor :legacy_crm_card_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :helpdesk_app_card_id

          sig { params(helpdesk_app_card_id: Integer).void }
          attr_writer :helpdesk_app_card_id

          sig do
            params(
              app_card_id: Integer,
              legacy_crm_card_id: Integer,
              helpdesk_app_card_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            app_card_id:,
            legacy_crm_card_id:,
            helpdesk_app_card_id: nil
          )
          end

          sig do
            override.returns(
              {
                app_card_id: Integer,
                legacy_crm_card_id: Integer,
                helpdesk_app_card_id: Integer
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
