# typed: strong

module HubspotSDK
  module Models
    module CRM
      class TimelineEventTemplateToken < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::TimelineEventTemplateToken,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Used for list segmentation and reporting.
        sig { returns(String) }
        attr_accessor :label

        # The name of the token referenced in the templates. This must be unique for the
        # specific template. It may only contain alphanumeric characters, periods, dashes,
        # or underscores (. - \_).
        sig { returns(String) }
        attr_accessor :name

        # The data type of the token. You can currently choose from [string, number, date,
        # enumeration].
        sig do
          returns(HubspotSDK::CRM::TimelineEventTemplateToken::Type::OrSymbol)
        end
        attr_accessor :type

        # The date and time that the Event Template Token was created, as an ISO 8601
        # timestamp. Will be null if the template was created before Feb 18th, 2020.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The name of the CRM object property. This will populate the CRM object property
        # associated with the event. With enough of these, you can fully build CRM objects
        # via the Timeline API.
        sig { returns(T.nilable(String)) }
        attr_reader :object_property_name

        sig { params(object_property_name: String).void }
        attr_writer :object_property_name

        # If type is `enumeration`, we should have a list of options to choose from.
        sig do
          returns(
            T.nilable(
              T::Array[HubspotSDK::CRM::TimelineEventTemplateTokenOption]
            )
          )
        end
        attr_reader :options

        sig do
          params(
            options:
              T::Array[
                HubspotSDK::CRM::TimelineEventTemplateTokenOption::OrHash
              ]
          ).void
        end
        attr_writer :options

        # The date and time that the Event Template Token was last updated, as an ISO 8601
        # timestamp. Will be null if the template was created before Feb 18th, 2020.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # State of the token definition.
        sig do
          params(
            label: String,
            name: String,
            type: HubspotSDK::CRM::TimelineEventTemplateToken::Type::OrSymbol,
            created_at: Time,
            object_property_name: String,
            options:
              T::Array[
                HubspotSDK::CRM::TimelineEventTemplateTokenOption::OrHash
              ],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Used for list segmentation and reporting.
          label:,
          # The name of the token referenced in the templates. This must be unique for the
          # specific template. It may only contain alphanumeric characters, periods, dashes,
          # or underscores (. - \_).
          name:,
          # The data type of the token. You can currently choose from [string, number, date,
          # enumeration].
          type:,
          # The date and time that the Event Template Token was created, as an ISO 8601
          # timestamp. Will be null if the template was created before Feb 18th, 2020.
          created_at: nil,
          # The name of the CRM object property. This will populate the CRM object property
          # associated with the event. With enough of these, you can fully build CRM objects
          # via the Timeline API.
          object_property_name: nil,
          # If type is `enumeration`, we should have a list of options to choose from.
          options: nil,
          # The date and time that the Event Template Token was last updated, as an ISO 8601
          # timestamp. Will be null if the template was created before Feb 18th, 2020.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              label: String,
              name: String,
              type: HubspotSDK::CRM::TimelineEventTemplateToken::Type::OrSymbol,
              created_at: Time,
              object_property_name: String,
              options:
                T::Array[HubspotSDK::CRM::TimelineEventTemplateTokenOption],
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The data type of the token. You can currently choose from [string, number, date,
        # enumeration].
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::CRM::TimelineEventTemplateToken::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATE =
            T.let(
              :date,
              HubspotSDK::CRM::TimelineEventTemplateToken::Type::TaggedSymbol
            )
          ENUMERATION =
            T.let(
              :enumeration,
              HubspotSDK::CRM::TimelineEventTemplateToken::Type::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              HubspotSDK::CRM::TimelineEventTemplateToken::Type::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              HubspotSDK::CRM::TimelineEventTemplateToken::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::TimelineEventTemplateToken::Type::TaggedSymbol
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
