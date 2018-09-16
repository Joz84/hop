require 'csv'
require 'open-uri'
desc "This task is called by the Heroku scheduler add-on"
task :set_sirtaqui => :environment do
  Event.destroy_all
  # filepath    = 'http://aquitaine.media.tourinsoft.eu/upload/SIRTAQUI-liste-csv-fetes-manifestations-mois-en-coursaquitaine.csv'
  # url = "data-sirtaqui.csv"
  url = "https://raw.githubusercontent.com/Joz84/hop/master/data-sirtaqui.csv"
  file = open(url)
  csv_options = { col_sep: ';', quote_char: '"', encoding: 'ISO8859-1', headers: :first_row }
  stop = true
  CSV.foreach(file, csv_options) do |row|
    event = Event.new(
      title: row['NOM_OFFRE'],
      city: row['COMMUNE'],
      address: "#{row['RUE']}, #{row['COMMUNE']}",
      begin_at: Date.parse(row['DATES'].split("|")[0]),
      end_at: Date.parse(row['DATES'].split("|")[1]),
      sirtaqui_id: row['Id']
    )
    event.save
  end

end

