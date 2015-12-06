// The Typesafe repository 
resolvers += "Typesafe repository" at "http://repo.typesafe.com/typesafe/releases/"

resolvers += Resolver.url(
  "bintray-thricejamie-sbt-plugins",
    url("http://dl.bintray.com/thricejamie/sbt-plugins"))(
        Resolver.ivyStylePatterns)

// https://github.com/typesafehub/sbteclipse/wiki/Using-sbteclipse
//import com.typesafe.sbteclipse.core.EclipsePlugin._
//EclipseKeys.createSrc := EclipseCreateSrc.Default + EclipseCreateSrc.Resource // + EclipseCreateSrc.Managed

// EclipseKeys.withSource := true

// EclipseKeys.withBundledScalaContainers := false

// EclipseKeys.eclipseOutput := Some("target/scala_version/classes")

cancelable in Global := true

libraryDependencies += "com.lihaoyi" % "ammonite-repl" % "0.5.1" % "test" cross CrossVersion.full

initialCommands in (Test, console) := """ammonite.repl.Main.run("")"""
