require 'kelisto_feedback/version'
require 'kelisto_feedback/engine'
require 'kelisto_feedback/helper'

ActionView::Base.send(:include, KelistoFeedback::ViewHelpers)
