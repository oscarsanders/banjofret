-- l3build configuration for the banjofret package
-- Usage:  l3build doc | l3build check | l3build ctan
module  = "banjofret"
version = "1.0.0"
date    = "2026-09-28"

sourcefiles  = {"banjofret.dtx", "banjofret.ins"}
unpackfiles  = {"banjofret.ins"}
installfiles = {"*.sty"}
typesetfiles = {"banjofret.dtx"}
-- The manual pulls its live examples from these snippets (copied flat by
-- l3build; the manual looks in examples/ first and then in ./).
docfiles     = {"examples/snip-*.tex", "examples/banjofret-examples.tex"}
textfiles    = {"README.md", "CHANGELOG.md", "LICENSE.md"}

checkengines = {"pdftex", "xetex", "luatex"}
stdengine    = "pdftex"
checkruns    = 1
typesetruns  = 2
checkconfigs = {"build"}

tagfiles = {"banjofret.dtx", "README.md", "banjofret.ins"}

function update_tag(file, content, tagname, tagdate)
  if string.match(file, "%.dtx$") then
    content = string.gsub(content, "%[%d%d%d%d/%d%d/%d%d v[%d%.]+",
      "[" .. string.gsub(tagdate, "-", "/") .. " v" .. tagname)
  end
  return content
end
