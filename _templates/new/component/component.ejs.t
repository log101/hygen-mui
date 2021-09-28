---
to:  <%= locals.path %>/<%= h.inflection.camelize(name, false) %>/<%= h.inflection.camelize(name, false) %>.<%= componentExt %>
---
<% componentName = h.inflection.camelize(name, false) -%>
<% klassName = h.inflection.camelize(componentName, true) -%>
<% cssClassName = h.changeCase.paramCase(componentName, true) -%>

<% if (locals.type === 'functional') { -%>
import React from 'react';

<% if(locals.includeCss){ -%>
import './<%= klassName %>.scss';
<% } -%>

const <%= componentName %> = () => (
<%_ if(locals.includeCss){ _%>
    <div data-testid="<%= cssClassName %>-component" className="<%= cssClassName %>-container">
<% } else{ _%>
    <div>
<% } _%>
        <h1><%= componentName %> Component</h1>
    </div>
);

export default <%= componentName %>;
<% } -%>
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

<% if (locals.type === 'stateful') { -%>
import React, {Component} from 'react';
import PropTypes from 'prop-types';
<% if(locals.includeCss){ -%>
import './<%= klassName %>.scss';
<% } -%>

export class <%= componentName %> extends Component {
    static propTypes = {};

    state = {
        foo: 'bar',
    };

    render() {
        return (
<%_ if(locals.includeCss){ _%>
            <div className="<%= cssClassName %>-container">
<% } else{ _%>
            <div>
<% } _%>
                <h1><%= componentName %>, the start of a React Stateful Component</h1>
            </div>
        );
    }
}

export default <%= componentName %>;
<% } -%>
<% if (locals.type === 'pure') { -%>
import React, { PureComponent } from 'react';
import PropTypes from 'prop-types';
<% if(locals.includeCss){ -%>
import './<%= klassName %>.scss';
<% } -%>

export default class <%= componentName %> extends PureComponent {
    static propTypes = {};

    render() {
        return (
<%_ if(locals.includeCss){ _%>
            <div className="<%= cssClassName %>-container">
<% } else{ _%>
            <div>
<% } _%>
                <h1><%= componentName %>, the start of a React Pure Component</h1>
            </div>
        );
    }
}
<% } -%>
