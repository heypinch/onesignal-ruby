module OneSignal
  module Appearances
    class Additionals
      attr_reader :android_channel_id, :existing_android_channel_id, :android_led_color, :android_accent_color,
                  :android_visibility, :ios_badgeType, :ios_badgeCount, :collapse_id, :apns_alert

      def initialize params
        @android_channel_id           = params[:android_channel_id]
        @existing_android_channel_id  = params[:existing_android_channel_id]
        @android_led_color            = params[:android_led_color]
        @android_accent_color         = params[:android_accent_color]
        @android_visibility           = params[:android_visibility]
        @ios_badgeType                = params[:ios_badgeType]
        @ios_badgeCount               = params[:ios_badgeCount]
        @collapse_id                  = params[:collapse_id]
        @apns_alert                   = params[:apns_alert]
      end

      def as_json options = nil
        {
          'android_channel_id'              => android_channel_id,
          'existing_android_channel_id'     => existing_android_channel_id,
          'android_led_color'               => android_led_color,
          'android_accent_color'            => android_accent_color,
          'android_visibility'              => android_visibility,
          'ios_badgeType'                   => ios_badgeType,
          'ios_badgeCount'                  => ios_badgeCount,
          'collapse_id'                     => collapse_id,
          'apns_alert'                      => apns_alert,
        }
      end
    end
  end
end
