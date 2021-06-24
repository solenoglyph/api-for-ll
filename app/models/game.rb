class Game < ApplicationRecord
    belongs_to :home_team, :class_name => "Team"
    belongs_to :away_team, :class_name => "Team"

    scope :ordered_by_date, -> { order(date: :asc) }
    
    def winner 
        if home_team_score && away_team_score
            if home_team_score > away_team_score 
                {name: self.home_team.name, img: self.home_team.img}
            else
                self.away_team
                # self.away_team.name
            end
        else
            
        end

    end

    def loser
        if home_team_score && away_team_score
            if home_team_score > away_team_score 
                self.away_team.name
            else
                self.home_team.name
            end
        else
            'N/A'
        end
    end

end
