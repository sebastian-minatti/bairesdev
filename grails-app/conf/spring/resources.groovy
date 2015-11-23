import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver

// Place your Spring DSL code here
beans = {
 freemarkerConfig(FreeMarkerConfigurer) {
  templateLoaderPath = "/"
 }
 viewResolver(FreeMarkerViewResolver) {
  cache = "false"
  prefix = "bin/freemarker"
  suffix = ".ftl"
  exposeSpringMacroHelpers = "true"
 }
}
