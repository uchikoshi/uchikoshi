module StagesHelper
  def position(continuity, member)
    equ = continuity.positions.where("member_id=:id",{:id=>member.id }).map(&:equipment)
    equ.map(&:name)
  end
end
