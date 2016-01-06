def rock_paper_scis(player, opponent)
  win_conditions = { "rock" => "scissors",
                     "paper" => "rock",
                     "scissors" => "paper"}

  if win_conditions[player] == opponent
    return true
  else
    return false
  end
end
