require 'open3'
require "nmapr/version"
require "nmapr/scanner"

module Nmapr
  def self.scan(type = :object, &block)
    scan = Scanner.new
    scan.instance_eval(&block)
    case type
    when :object
      scan 
    when :cmd
      scan.to_cmd
    when :run
      run(scan.to_cmd)
    end
  end

  def self.run(cmd)
    results = Hash.new
    stdout, stderr, status = Open3.capture3(cmd)
    results[:stdout] = stdout
    results[:stderr] = stderr
    results[:status] = status
    return results unless block_given?
    yield results
  end
end
