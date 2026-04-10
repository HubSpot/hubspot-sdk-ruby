# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLinkMetadata < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalLinkMetadata,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the meeting link.
        sig { returns(String) }
        attr_accessor :id

        # The Unix time in milliseconds when the meeting link was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Whether the meeting link is the user's default link.
        sig { returns(T::Boolean) }
        attr_accessor :default_link

        # The URL of the meeting link.
        sig { returns(String) }
        attr_accessor :link

        # The user ID of the meeting link's organizer.
        sig { returns(String) }
        attr_accessor :organizer_user_id

        # The slug of the meeting link, located directly after the domain in the URL.
        sig { returns(String) }
        attr_accessor :slug

        # The type of the external meeting link. Accepted values are: PERSONAL_LINK,
        # GROUP_CALENDAR, ROUND_ROBIN_CALENDAR.
        sig do
          returns(
            HubSpotSDK::Scheduler::ExternalLinkMetadata::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T::Array[String]) }
        attr_accessor :user_ids_of_link_members

        # The name of the meeting link.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The Unix time in milliseconds when the meeting link was last updated.
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
            type: HubSpotSDK::Scheduler::ExternalLinkMetadata::Type::OrSymbol,
            user_ids_of_link_members: T::Array[String],
            name: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the meeting link.
          id:,
          # The Unix time in milliseconds when the meeting link was created.
          created_at:,
          # Whether the meeting link is the user's default link.
          default_link:,
          # The URL of the meeting link.
          link:,
          # The user ID of the meeting link's organizer.
          organizer_user_id:,
          # The slug of the meeting link, located directly after the domain in the URL.
          slug:,
          # The type of the external meeting link. Accepted values are: PERSONAL_LINK,
          # GROUP_CALENDAR, ROUND_ROBIN_CALENDAR.
          type:,
          user_ids_of_link_members:,
          # The name of the meeting link.
          name: nil,
          # The Unix time in milliseconds when the meeting link was last updated.
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
              type:
                HubSpotSDK::Scheduler::ExternalLinkMetadata::Type::TaggedSymbol,
              user_ids_of_link_members: T::Array[String],
              name: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The type of the external meeting link. Accepted values are: PERSONAL_LINK,
        # GROUP_CALENDAR, ROUND_ROBIN_CALENDAR.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Scheduler::ExternalLinkMetadata::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GROUP_CALENDAR =
            T.let(
              :GROUP_CALENDAR,
              HubSpotSDK::Scheduler::ExternalLinkMetadata::Type::TaggedSymbol
            )
          PERSONAL_LINK =
            T.let(
              :PERSONAL_LINK,
              HubSpotSDK::Scheduler::ExternalLinkMetadata::Type::TaggedSymbol
            )
          ROUND_ROBIN_CALENDAR =
            T.let(
              :ROUND_ROBIN_CALENDAR,
              HubSpotSDK::Scheduler::ExternalLinkMetadata::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalLinkMetadata::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
