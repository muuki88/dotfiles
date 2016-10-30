// The Typesafe repository 
resolvers += "Typesafe repository" at "http://repo.typesafe.com/typesafe/releases/"

resolvers += Resolver.url(
  "bintray-thricejamie-sbt-plugins",
    url("http://dl.bintray.com/thricejamie/sbt-plugins"))(
        Resolver.ivyStylePatterns)

cancelable in Global := true

libraryDependencies += "com.lihaoyi" % "ammonite-repl" % "0.7.8" % "test" cross CrossVersion.full

initialCommands in (Test, console) := """ammonite.repl.Main.run("")"""

// for generating fresh sbt projects
import de.heikoseeberger.sbtfresh.FreshPlugin.autoImport._
freshAuthor       := "Nepomuk Seiler"
freshName         := "muki-project"
freshOrganization := "de.mukis"
freshSetUpGit     := true

