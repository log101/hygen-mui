---
to: <%= locals.path %>/<%= h.inflection.camelize(name, false) %>/index.<%=extension%>
---
<% componentName = h.inflection.camelize(name, false) -%>
export { default } from './<%= componentName %>';
