# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class ContactAssociation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::ContactAssociation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The internal ID of the contact in HubSpot
        sig { returns(String) }
        attr_accessor :contact_id

        # The email of the contact in HubSpot
        sig { returns(String) }
        attr_accessor :email

        # The first name of the contact in HubSpot
        sig { returns(T.nilable(String)) }
        attr_reader :firstname

        sig { params(firstname: String).void }
        attr_writer :firstname

        # The last name of the contact in HubSpot
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
        def self.new(
          # The internal ID of the contact in HubSpot
          contact_id:,
          # The email of the contact in HubSpot
          email:,
          # The first name of the contact in HubSpot
          firstname: nil,
          # The last name of the contact in HubSpot
          lastname: nil
        )
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
