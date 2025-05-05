require 'yaml'

ROOT_PATH = File.expand_path('../..', __dir__)
PUBSPEC_PATH = File.join(ROOT_PATH, 'pubspec.yaml')
FASTFILE_PATH = File.join(__dir__, 'Fastfile')

def get_current_version
  IO.foreach(PUBSPEC_PATH) do |line|
    return line.strip.split(' ')[1] if line.start_with?("version:")
  end
  "0.0.0+0"
end

def auto_increment_version
  current = get_current_version
  version_part, build_part = current.split('+')
  new_build = build_part.to_i + 1
  new_version = "#{version_part}+#{new_build}"

  lines = File.readlines(PUBSPEC_PATH)
  lines.map! { |line| line.start_with?('version:') ? "version: #{new_version}\n" : line }
  File.write(PUBSPEC_PATH, lines.join)

  puts "✅ Auto-incremented version: #{new_version}"
  new_version
end

def update_fastfile_release_note(new_note)
  content = File.read(FASTFILE_PATH)
  updated = content.gsub(/release_notes: ".*?"/, "release_notes: \"#{new_note}\"")
  File.write(FASTFILE_PATH, updated)
  puts "✅ Fastfile updated with release note: #{new_note}"
end
