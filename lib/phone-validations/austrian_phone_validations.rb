MOBILE_PREFIX = {
        :drei      => '660',
        :a1        => '664|680',
        :t_mobile  => '676',
        :tele_ring => '650',
        :orange    => '699|681'
}

MOBILE_PREFIX_REGEX = %r{0043(#{MOBILE_PREFIX.collect { |category, regex| regex }.join('|')})}

class String
  def is_austrian_mobile_number?
    !!(self =~ MOBILE_PREFIX_REGEX)
  end
end