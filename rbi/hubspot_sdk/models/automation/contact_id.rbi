# typed: strong

module HubspotSDK
  module Models
    module Automation
      class ContactID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::ContactID,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(Integer)) }
        attr_reader :vid

        sig { params(vid: Integer).void }
        attr_writer :vid

        sig do
          params(portal_id: Integer, email: String, vid: Integer).returns(
            T.attached_class
          )
        end
        def self.new(portal_id:, email: nil, vid: nil)
        end

        sig do
          override.returns({ portal_id: Integer, email: String, vid: Integer })
        end
        def to_hash
        end
      end
    end
  end
end
