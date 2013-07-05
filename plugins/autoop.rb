class AutoOp
  include Cinch::Plugin

  listen_to :join

  def listen(m)
    m.channel.op(m.user)
  end

end