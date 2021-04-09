
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
  def line_items
    move_down(10)
    table line_item_rows, :header => true,
    :cell_style => { size: 8 },
    :column_widths => {2 => 100, 3 => 100}
  end
  def line_item_rows
    [["Date", "site", "what you learnt", "Challenge"]] +
    @weekly_reports.map do |item|
      [item.done_at, activity_items(item), item.lesson, item.challenge]
    end
  end
  def activity_items(item)
    make_table activity_item_rows(item),
    :cell_style => {size: 8, :borders => [:left, :bottom]},
    :column_widths => {0 => 40, 1 => 60, 2 => 150}
  end
  def activity_item_rows(item)
    item.activities.map do |activity|
      [activity.site," #{activity.to.to_s(:time)} - #{activity.to.to_s(:time)}",activity.action]
    end
  end
end
