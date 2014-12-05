// The Typesafe repository 
resolvers += "Typesafe repository" at "http://repo.typesafe.com/typesafe/releases/"

resolvers += Resolver.url(
  "bintray-thricejamie-sbt-plugins",
    url("http://dl.bintray.com/thricejamie/sbt-plugins"))(
        Resolver.ivyStylePatterns)

net.virtualvoid.sbt.graph.Plugin.graphSettings

// https://github.com/typesafehub/sbteclipse/wiki/Using-sbteclipse
EclipseKeys.createSrc := EclipseCreateSrc.Default + EclipseCreateSrc.Resource

EclipseKeys.withSource := true

// EclipseKeys.eclipseOutput := Some("target/scala_version/classes")
