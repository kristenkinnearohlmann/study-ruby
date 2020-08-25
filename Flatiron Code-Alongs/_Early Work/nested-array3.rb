performances=[
    ["SPCS",
        ["Oct 22 2017",
            ["Brahms","Takemitsu"]
        ],
        ["Dec 3 2017",
            ["Wagner","Nielsen"]
        ]
    ],
    ["MVO",
        ["Oct 22 2017",
            ["Suppe","Saint Saens","Mussorgsky"]
        ],
        ["Dec 8 2017",
            ["Christmas music"]
        ],
        ["Dec 15 2017",
            ["Christmas music"]
        ]
    ],
    ["GSW",
        ["Oct 28 2017",
            ["Unknown"]
        ],
        ["Dec 9 2017",
            ["Lindroth","Debussy","Bernstein"]
        ]
    ]
]

concertFormatted = ""

performances.each do |group_detail|
    group_detail.each do |group_element|
        if group_element.class != Array
            puts "Group name: #{group_element}"
        else
            group_element.each do |date_element|
                if date_element.class != Array
                    print "#{date_element}: "
                else
                    date_element.each do |piece_element|
                        concertFormatted = concertFormatted += "#{piece_element}, "
                    end
                    puts concertFormatted.chomp(", ")
                end
            end
            concertFormatted = ""
        end
    end
    puts
end