class TestChannel < ApplicationCable::Channel

  def follow(data)
    stop_all_streams
    stream_from "evento_#{data['evento'].to_s}"
  end

  def unfollow
    stop_all_streams
  end

end
