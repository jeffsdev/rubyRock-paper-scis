class String
  def rock_paper_scis
    move_array = ["rock", "paper", "scissors"]
    win_conditions = { "rock" => "scissors",
                       "paper" => "rock",
                       "scissors" => "paper"}
    player = self
    computer = move_array[(rand * 3).floor]
    if player == computer
      return ["Draw",computer]
    elsif win_conditions[player] == computer
      return ["Player",computer]
    else
      return ["Computer",computer]
    end
  end
end
