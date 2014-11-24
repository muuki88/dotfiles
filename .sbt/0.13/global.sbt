// The Typesafe repository 
resolvers += "Typesafe repository" at "http://repo.typesafe.com/typesafe/releases/"

net.virtualvoid.sbt.graph.Plugin.graphSettings

// https://github.com/typesafehub/sbteclipse/wiki/Using-sbteclipse
EclipseKeys.createSrc := EclipseCreateSrc.Default + EclipseCreateSrc.Resource

EclipseKeys.withSource := true

// EclipseKeys.eclipseOutput := Some("target/scala_version/classes")

addSbtPlugin("com.scalapenos" % "sbt-prompt" % "0.2.1")

