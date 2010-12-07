# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

# Default
include Nanoc2::Helpers::Blogging
include Nanoc2::Helpers::HTMLEscape
include Nanoc2::Helpers::LinkTo


class Time
  def format_as_date
    %[#{Date::MONTHNAMES[self.mon]} #{self.mday.ordinal}, #{self.year}]
  end

  def format_as_date_id
    "#{self.year}-#{self.mon}-#{self.mday}"
  end
end

class Numeric
  def ordinal
    if (10...20).include?(self) then
      self.to_s + 'th'
    else
      self.to_s + %w{th st nd rd th th th th th th}[self % 10]
    end
  end

  def to_month_name
    Date::MONTHNAMES[self]
  end
end

module Enumerable
  def group_by
    inject({}) do |groups, element|
      (groups[yield(element)] ||= []) << element
      groups
    end
  end
end
