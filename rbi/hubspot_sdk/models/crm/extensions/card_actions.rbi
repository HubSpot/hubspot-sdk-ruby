# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardActions < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CardActions,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # A list of URL prefixes that will be accepted for card action URLs. If your data
          # fetch response includes an action URL that doesn't begin with one of these
          # values, it will result in an error and the card will not be displayed.
          sig { returns(T::Array[String]) }
          attr_accessor :base_urls

          sig { params(base_urls: T::Array[String]).returns(T.attached_class) }
          def self.new(
            # A list of URL prefixes that will be accepted for card action URLs. If your data
            # fetch response includes an action URL that doesn't begin with one of these
            # values, it will result in an error and the card will not be displayed.
            base_urls:
          )
          end

          sig { override.returns({ base_urls: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
