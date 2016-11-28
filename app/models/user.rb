class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :follows

  def followed(user = nil)
    self.follows.where(user: user).first
  end

  def activity_notify
    [StreamRails.feed_manager.get_notification_feed(self.target_id)]
  end

  def activity_object
    self.target
  end
end
