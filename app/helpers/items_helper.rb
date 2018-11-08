module ItemsHelper
  def expired?(item)
    Time.now > (item.created_at + 7.days)
  end
end
