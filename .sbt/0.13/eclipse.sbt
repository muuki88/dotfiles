//https://github.com/typesafehub/sbteclipse/wiki/Using-sbteclipse
import com.typesafe.sbteclipse.core.EclipsePlugin._
EclipseKeys.createSrc := EclipseCreateSrc.Default + EclipseCreateSrc.Resource // + EclipseCreateSrc.Managed

EclipseKeys.withSource := true
EclipseKeys.withBundledScalaContainers := false
EclipseKeys.eclipseOutput := {
  val version = scalaVersion.value.split("\\.") match {
    case Array(major, minor, _) => s"$major.$minor"
    case Array(major, minor) => s"$major.$minor"
    case invalid => sys.error(s"Invalid version: ${invalid mkString ""}")
  }
  Some(s"target/scala-$version/classes")
}
