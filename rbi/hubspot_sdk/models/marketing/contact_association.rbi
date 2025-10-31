# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class ContactAssociation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::ContactAssociation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :contact_id

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :firstname

        sig { params(firstname: String).void }
        attr_writer :firstname

        sig { returns(T.nilable(String)) }
        attr_reader :lastname

        sig { params(lastname: String).void }
        attr_writer :lastname

        sig do
          params(
            contact_id: String,
            email: String,
            firstname: String,
            lastname: String
          ).returns(T.attached_class)
        end
        def self.new(contact_id:, email:, firstname: nil, lastname: nil)
        end

        sig do
          override.returns(
            {
              contact_id: String,
              email: String,
              firstname: String,
              lastname: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
