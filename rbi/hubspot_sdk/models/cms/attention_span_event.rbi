# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AttentionSpanEvent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::AttentionSpanEvent,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the contact in HubSpot’s system that consumed the media. This can be
        # fetched using HubSpot's Get contact by usertoken (utk) API. The API also
        # supports supplying a usertoken, and will handle converting this into a contact
        # ID automatically.
        sig { returns(Integer) }
        attr_accessor :contact_id

        sig { returns(Integer) }
        attr_accessor :media_bridge_id

        sig { returns(String) }
        attr_accessor :media_bridge_object_coordinates

        sig { returns(String) }
        attr_accessor :media_bridge_object_type_id

        sig { returns(String) }
        attr_accessor :media_name

        sig do
          returns(HubspotSDK::Cms::AttentionSpanEvent::MediaType::TaggedSymbol)
        end
        attr_accessor :media_type

        # The timestamp at which this event occurred, in milliseconds since the epoch.
        sig { returns(Integer) }
        attr_accessor :occurred_timestamp

        sig { returns(String) }
        attr_accessor :percent_range

        # The ID of the HubSpot account.
        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(Integer) }
        attr_accessor :provider_id

        sig { returns(String) }
        attr_accessor :session_id

        # The percent of the media that the user consumed. Providers may calculate this
        # differently depending on how they consider repeated views of the same portion of
        # media. For this reason, the API will not attempt to validate totalPercentWatched
        # against the attention span information for the event. If it is missing, HubSpot
        # will calculate this from the attention span map as follows: (number of spans
        # with a value of 1 or more)/(Total number of spans).
        sig { returns(Float) }
        attr_accessor :total_percent_played

        sig { returns(T.nilable(String)) }
        attr_reader :media_url

        sig { params(media_url: String).void }
        attr_writer :media_url

        # The ID of the page, if hosted on HubSpot. Required for HubSpot pages.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_id

        sig { params(page_id: Integer).void }
        attr_writer :page_id

        # The name of the page. Required if the page is not hosted on HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :page_name

        sig { params(page_name: String).void }
        attr_writer :page_name

        sig { returns(T.nilable(String)) }
        attr_reader :page_object_coordinates

        sig { params(page_object_coordinates: String).void }
        attr_writer :page_object_coordinates

        # The URL of the page that an event happened on. Required if the page is not
        # hosted on HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :page_url

        sig { params(page_url: String).void }
        attr_writer :page_url

        # This is the raw data which provides the most granular data about spans of the
        # media, and how many times each span was consumed by the user. For example, for a
        # 10 second video where each second is a span, if a visitor watches the first 5
        # seconds of the video, then restarts the video and watches the first 2 seconds
        # again, the resulting `rawDataString` would be
        # `“0=2;1=2;2=1;3=1;4=1;5=0;6=0;7=0;8=0;9=0;”`.
        sig { returns(T.nilable(String)) }
        attr_reader :raw_data

        sig { params(raw_data: String).void }
        attr_writer :raw_data

        # The seconds that a user spent consuming the media. The media bridge calculates
        # this as `totalPercentPlayed`\*`mediaDuration`. If a provider would like this to
        # be calculated differently, they can provide the pre-calculated value when they
        # create the event.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_seconds_played

        sig { params(total_seconds_played: Integer).void }
        attr_writer :total_seconds_played

        sig do
          params(
            contact_id: Integer,
            media_bridge_id: Integer,
            media_bridge_object_coordinates: String,
            media_bridge_object_type_id: String,
            media_name: String,
            media_type:
              HubspotSDK::Cms::AttentionSpanEvent::MediaType::OrSymbol,
            occurred_timestamp: Integer,
            percent_range: String,
            portal_id: Integer,
            provider_id: Integer,
            session_id: String,
            total_percent_played: Float,
            media_url: String,
            page_id: Integer,
            page_name: String,
            page_object_coordinates: String,
            page_url: String,
            raw_data: String,
            total_seconds_played: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the contact in HubSpot’s system that consumed the media. This can be
          # fetched using HubSpot's Get contact by usertoken (utk) API. The API also
          # supports supplying a usertoken, and will handle converting this into a contact
          # ID automatically.
          contact_id:,
          media_bridge_id:,
          media_bridge_object_coordinates:,
          media_bridge_object_type_id:,
          media_name:,
          media_type:,
          # The timestamp at which this event occurred, in milliseconds since the epoch.
          occurred_timestamp:,
          percent_range:,
          # The ID of the HubSpot account.
          portal_id:,
          provider_id:,
          session_id:,
          # The percent of the media that the user consumed. Providers may calculate this
          # differently depending on how they consider repeated views of the same portion of
          # media. For this reason, the API will not attempt to validate totalPercentWatched
          # against the attention span information for the event. If it is missing, HubSpot
          # will calculate this from the attention span map as follows: (number of spans
          # with a value of 1 or more)/(Total number of spans).
          total_percent_played:,
          media_url: nil,
          # The ID of the page, if hosted on HubSpot. Required for HubSpot pages.
          page_id: nil,
          # The name of the page. Required if the page is not hosted on HubSpot.
          page_name: nil,
          page_object_coordinates: nil,
          # The URL of the page that an event happened on. Required if the page is not
          # hosted on HubSpot.
          page_url: nil,
          # This is the raw data which provides the most granular data about spans of the
          # media, and how many times each span was consumed by the user. For example, for a
          # 10 second video where each second is a span, if a visitor watches the first 5
          # seconds of the video, then restarts the video and watches the first 2 seconds
          # again, the resulting `rawDataString` would be
          # `“0=2;1=2;2=1;3=1;4=1;5=0;6=0;7=0;8=0;9=0;”`.
          raw_data: nil,
          # The seconds that a user spent consuming the media. The media bridge calculates
          # this as `totalPercentPlayed`\*`mediaDuration`. If a provider would like this to
          # be calculated differently, they can provide the pre-calculated value when they
          # create the event.
          total_seconds_played: nil
        )
        end

        sig do
          override.returns(
            {
              contact_id: Integer,
              media_bridge_id: Integer,
              media_bridge_object_coordinates: String,
              media_bridge_object_type_id: String,
              media_name: String,
              media_type:
                HubspotSDK::Cms::AttentionSpanEvent::MediaType::TaggedSymbol,
              occurred_timestamp: Integer,
              percent_range: String,
              portal_id: Integer,
              provider_id: Integer,
              session_id: String,
              total_percent_played: Float,
              media_url: String,
              page_id: Integer,
              page_name: String,
              page_object_coordinates: String,
              page_url: String,
              raw_data: String,
              total_seconds_played: Integer
            }
          )
        end
        def to_hash
        end

        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::AttentionSpanEvent::MediaType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Cms::AttentionSpanEvent::MediaType::TaggedSymbol
            )
          AUDIO =
            T.let(
              :AUDIO,
              HubspotSDK::Cms::AttentionSpanEvent::MediaType::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Cms::AttentionSpanEvent::MediaType::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              HubspotSDK::Cms::AttentionSpanEvent::MediaType::TaggedSymbol
            )
          IMAGE =
            T.let(
              :IMAGE,
              HubspotSDK::Cms::AttentionSpanEvent::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::AttentionSpanEvent::MediaType::TaggedSymbol
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
