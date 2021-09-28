---
to: '<% if(locals.includeTest) { %><%= path %>/<%= h.inflection.camelize(name, false) %>/__tests__/<%= h.inflection.camelize(name, false) %>.spec.js<% } %>'
---
<% componentName = h.inflection.camelize(name, false) -%>
<% cssClassName = h.changeCase.paramCase(componentName, true) -%>
import React from 'react';
import { render, screen } from '@testing-library/react';
import <%= componentName %> from '../<%= componentName %>';

describe('<%= componentName %>', () => {
    it('should render the component', () => {
        render(<<%= componentName %> />);
        const element = screen.getByTestId(/<%= cssClassName %>-component/i);
        expect(element).toBeInTheDocument();
    });
});
