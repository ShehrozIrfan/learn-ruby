class Radio
  attr_reader :band
  attr_reader :volume
  attr_reader :freq

  @@am_frequency = 540.0...1600.0
  @@fm_frequency = 88.0...108.0
  @@default_am_frequency = 600.4
  @@default_fm_frequency = 95.4

  def initialize(options={})
    @volume = options[:volume] || 5
    @freq = options[:freq] || default_freq
    @band = options[:band] || "AM"
  end

  def volume=(value)
    return if value < 1 || value > 10
    @volume = value
  end

  def freq=(value)
    # if band is AM : 540.0 to 1600.0
    # if band is FM : 88.0 to 108.0
    value = value.to_f
    value = default_freq unless allowed_frequencies.include?(value)
    @freq = value.to_f
  end

  def self.fm
    Radio.new(band: 'FM')
  end

  def self.am
    Radio.new(band: 'AM')
  end

  def status
    puts "[ Band: #{@band} ] - [ Volume: #{@volume} ] - [ Frequency: #{freq} ]"
  end

  private

    def default_freq
      @band == "FM" ? @@default_fm_frequency : @@default_am_frequency
    end

    def allowed_frequencies
      @band == "FM" ? @@am_frequency : @@fm_frequency
    end
end
