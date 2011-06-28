$(document).ready ->
  # Initialize the TableSorter plugin on any tables marked with the tablesorter class.
  $(".tablesorter").tablesorter()

  # For any tabbed sections, hide all but the first tab's content
  $(".tab_content").hide()
  $(".tab_content:first").show()

  # Make the first tab 'active' to reflect the previous action
  $("ul.tabs li:first").addClass("active").show()
  $("ul.tabs li").click ->
    $("ul.tabs li").removeClass "active"
    $(this).addClass "active"
    $(".tab_content").hide()
    activeTab = $(this).find("a").attr("href")
    $(activeTab).fadeIn()
    false # return false to cancel post-back

  # For every '.column', run the EqualHeight plugin to make sure that the layout fits the content.
  $(".column").equalHeight()