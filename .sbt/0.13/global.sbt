// The Typesafe repository 
resolvers += "Typesafe repository" at "http://repo.typesafe.com/typesafe/releases/"
resolvers += Resolver.url("bintray-thricejamie-sbt-plugins", url("http://dl.bintray.com/thricejamie/sbt-plugins"))(Resolver.ivyStylePatterns)

cancelable in Global := true

libraryDependencies += "com.lihaoyi" % "ammonite-repl" % "0.8.2" % "test" cross CrossVersion.full
initialCommands in (Test, console) := """ammonite.repl.Main.run("")"""


// sbt promt
import com.scalapenos.sbt.prompt.SbtPrompt.autoImport._
import com.scalapenos.sbt.prompt._
//promptTheme := com.scalapenos.sbt.prompt.PromptThemes.ScalapenosTheme
promptTheme := PromptTheme(List(
  currentProject(fg(white)).padLeft("[").padRight("]"),
  gitBranch(clean = fg(green), dirty = fg(yellow)).padLeft("[").padRight("]"),
  text(" ⇒  ", fg(red))
))

