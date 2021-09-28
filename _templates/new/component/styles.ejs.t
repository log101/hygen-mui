---
to: '<% if(locals.includeCss) { %><%= locals.path %>/<%= h.inflection.camelize(name, false) %>/<%= h.inflection.camelize(name, true) %>.scss<% } %>'
---
<% cssClassName = h.changeCase.paramCase(componentName, true) -%>
.<%= `${cssClassName}-container` %> {
    // some scss here
}
