# encoding: utf-8

require 'opus/version'
require 'prawn'

class Opus
  # Creates a new opus instance.
  def initialize()
    self.page_layout = :landscape
    self.column_count = 5
    self.font_family = "Courier"
    self.font_size = 4
  end

  # The number of columns per page.
  attr_accessor :column_count

  # The font family to use.
  attr_accessor :font_family

  # The font size to use.
  attr_accessor :font_size

  # The page layout to use (portrait, landscape).
  attr_accessor :page_layout

  # Generates a PDF from a list of source files.
  #
  # @param filenames [Array]  a list of input files.
  # @param output    [IO]     the destination for the PDF output.
  def generate(filenames, output)
    column_count = self.column_count
    font_family = self.font_family
    font_size = self.font_size

    # Columnize lines in PDF.
    Prawn::Document.generate(output, page_layout: page_layout) do
      font(font_family, :size => font_size) do
        column_box([0, cursor], :columns => column_count, :width => bounds.width) do
          filenames.each do |filename|
            content = IO.read(filename).gsub(/^/, ". ")
            text("<b>#{filename}</b>", inline_format: true)
            text(content)
            text("\n\n")
          end
        end
      end
    end
  end
end
