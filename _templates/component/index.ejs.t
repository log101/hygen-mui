---
to: <%= path %>/<%= h.inflection.camelize(name, false) %>/index.ts
---
<% componentName = h.inflection.camelize(name, false) -%>
export { default } from './<%= componentName %>';
