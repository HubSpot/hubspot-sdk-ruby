# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardMigrateViewsResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CardMigrateViewsResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # A human readable message describing the error along with remediation steps where
          # appropriate
          sig { returns(String) }
          attr_accessor :message

          sig { params(message: String).returns(T.attached_class) }
          def self.new(
            # A human readable message describing the error along with remediation steps where
            # appropriate
            message:
          )
          end

          sig { override.returns({ message: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
