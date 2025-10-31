# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkMetadata < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalLinkMetadata,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Boolean) }
        attr_accessor :default_link

        sig { returns(String) }
        attr_accessor :link

        sig { returns(String) }
        attr_accessor :organizer_user_id

        sig { returns(String) }
        attr_accessor :slug

        sig { returns(String) }
        attr_accessor :type

        sig { returns(T::Array[String]) }
        attr_accessor :user_ids_of_link_members

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            default_link: T::Boolean,
            link: String,
            organizer_user_id: String,
            slug: String,
            type: String,
            user_ids_of_link_members: T::Array[String],
            name: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          default_link:,
          link:,
          organizer_user_id:,
          slug:,
          type:,
          user_ids_of_link_members:,
          name: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              default_link: T::Boolean,
              link: String,
              organizer_user_id: String,
              slug: String,
              type: String,
              user_ids_of_link_members: T::Array[String],
              name: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
