module OneSignal
  module Appearances
    class Images
      attr_reader :background, :android_small_icon, :android_large_icon, :amazon_small,
                  :amazon_large, :chrome_web_icon, :chrome_web_image, :chrome_web_badge, :firefox_icon, :chrome_icon

      def initialize params
        @background                = params[:background]
        @android_small_icon        = params[:android_small_icon]
        @android_large_icon        = params[:android_large_icon]
        @amazon_small              = params[:amazon_small]
        @amazon_large              = params[:amazon_large]
        @chrome_web_image          = params[:chrome_web_image]
        @chrome_web_icon           = params[:chrome_web_icon]
        @chrome_web_badge          = params[:chrome_web_badge]
        @firefox_icon              = params[:firefox_icon]
        @chrome_icon               = params[:chrome_icon]
      end

      def as_json options = nil
        {
          'android_background_layout'         => background,
          'small_icon'                        => android_small_icon,
          'large_icon'                        => android_large_icon,
          'adm_small_icon'                    => amazon_small,
          'adm_large_icon'                    => amazon_large,
          'chrome_web_icon'                   => chrome_web_icon,
          'chrome_web_image'                  => chrome_web_image,
          'chrome_web_badge'                  => chrome_web_badge,
          'firefox_icon'                      => firefox_icon,
          'chrome_icon'                       => chrome_icon
        }
      end
    end
  end
end
