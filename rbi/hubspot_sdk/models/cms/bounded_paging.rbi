# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BoundedPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::BoundedPaging, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T.nilable(HubSpotSDK::Cms::BoundedNextPage)) }
        attr_reader :next_

        sig { params(next_: HubSpotSDK::Cms::BoundedNextPage::OrHash).void }
        attr_writer :next_

        sig do
          params(next_: HubSpotSDK::Cms::BoundedNextPage::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(next_: nil)
        end

        sig { override.returns({ next_: HubSpotSDK::Cms::BoundedNextPage }) }
        def to_hash
        end
      end
    end
  end
end
