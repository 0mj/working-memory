linewidth = 50
preface = [["Table of Contents" ],
           ["Chapter 1:  Numbers",  "page 1"],
           ["Chapter 2:  Letters", "page 72"],
           ["Chapter 3:  Variables", "page 118"]
          ]
          print preface
          puts
          puts preface


<<-COMMENT
preface.each do |i|
	if preface[i] == 0
		puts preface[0][0].center(linewidth)
	end
	i+1
	# puts pref[i][pg].rjust(linewidth/2)
	# puts pref[i][pg].ljust(linewidth/2)
	
end
COMMENT

<<-HEREDOC
				Table of Contents                

Chapter 1:  Numbers                        page 1
Chapter 2:  Letters                       page 72
Chapter 3:  Variables                    page 118
HEREDOC