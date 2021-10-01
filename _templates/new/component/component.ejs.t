---
to:  <%= locals.path %>/<%= h.inflection.camelize(name, false) %>/<%= h.inflection.camelize(name, false) %>.<%= componentExt %>
---
<% componentName = h.inflection.camelize(name, false) -%>
<% klassName = h.inflection.camelize(componentName, true) -%>
<% cssClassName = h.changeCase.paramCase(componentName, true) -%>
<% if (locals.type === 'functional-typescript') { -%>
import React from 'react';

<% if(locals.includeCss){ -%>
import './<%= klassName %>.scss';
<% } -%>

interface Props {}

const <%= componentName %> = (props: Props) => {
  return (
<%_ if(locals.includeCss){ _%>
    <div data-testid="<%= cssClassName %>-component" className="<%= cssClassName %>-container">
<% } else{ _%>
    <div>
<% } _%>
        <h1><%= componentName %> Component</h1>
    </div>
  );
}

export default <%= componentName %>;
<% } -%>
<% if (locals.type === 'stateful-typescript') { -%>
import React, {Component} from 'react';

<% if(locals.includeCss){ -%>
import './<%= klassName %>.scss';
<% } -%>

interface Props {}
interface State {}

class <%= componentName %> extends Component<Props, State> {
    state = {};
    render() {
        return (
<%_ if(locals.includeCss){ _%>
            <div data-testid="<%= cssClassName %>-component" className="<%= cssClassName %>-container">
<% } else{ _%>
            <div>
<% } _%>
                <h1><%= componentName %> Component</h1>
            </div>
        );
    }
}
export default <%= componentName %>;
<% } -%>

