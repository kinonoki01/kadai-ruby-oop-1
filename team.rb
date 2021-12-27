class Team
  # 初期化
  def initialize(name, win, lose, draw)
    @name = name
    @win = win
    @lose = lose
    @draw = draw
  end
  
  # チームの勝率計算
  def calc_win_rate(win, lose)
    result = 0
    result = win.to_f/(win + lose)
    return result
  end
  
  # チームの成績を表示
  def show_team_result
    puts "#{@name} の2020年の成績は #{@win}勝 #{@lose}敗 #{@draw}分、勝率は #{calc_win_rate(@win, @lose)}です。"
  end
end

teams = [
  Team.new('Giants', 67, 45, 8),
  Team.new('Tigers', 60, 53, 7),
  Team.new('Dragons', 60, 55, 5),
  Team.new('BayStars', 56, 58, 6),
  Team.new('Carp', 52, 56, 12),
  Team.new('Swallows', 41, 69, 10)
  ]
  
teams.each do |team|
  team.show_team_result
end