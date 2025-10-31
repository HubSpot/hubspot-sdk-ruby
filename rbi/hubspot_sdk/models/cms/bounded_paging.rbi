# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BoundedPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::BoundedPaging, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T.nilable(HubspotSDK::Cms::BoundedNextPage)) }
        attr_reader :next_

        sig { params(next_: HubspotSDK::Cms::BoundedNextPage::OrHash).void }
        attr_writer :next_

        sig do
          params(next_: HubspotSDK::Cms::BoundedNextPage::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(next_: nil)
        end

        sig { override.returns({ next_: HubspotSDK::Cms::BoundedNextPage }) }
        def to_hash
        end
      end
    end
  end
end
