
class WeeklyReportPdf < Prawn::Document
  def initialize(weekly_reports)
    super(top_margin: 90)
    @weekly_reports = WeeklyReport.all
    header

    line_items
  end
  def header
    image "#{Rails.root}/app/assets/images/philos logo.png", :at => [0, 720], :width => 120
    text "PHILOS MC LTD", :styles => [:bold]
    text_box "PERSONAL WEEKLY REPORT", :at => [180, 720], :size => 14
    text "Tin: 106780328 \n Tel: (+250) 788827582 \n E-mail:tphilos2020@gmail.com", :size => 8
    text_box "From...... To......\n Names: Twiringiyimana Aimable ", :at => [380, 680], :size => 8
  end
  def title

  end
  def line_items
    table line_item_rows
  end
  def line_item_rows
    [["Date", "what you learnt", "Challenge"]] +
    @weekly_reports.map do |item|
      [item.done_at, item.lesson, item.challenge]
    end
  end
end
